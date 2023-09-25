# Verify that the requested reverse proxy destination is valid:
#   - protocol is http(s):// or unix: for socket file
#   - plaintext http is only allowed to localhost (to avoid leaking credentials on the network)
#   - http(s) destination is webroot, no additional component allowed (eg. http://localhost:1234/test is invalid)
rp_validate_proxy_path() {
    if [[ ! $proxy_path =~ ^'unix:/' ]]; then
        url_regex='^(http://(127\.[0-9]+\.[0-9]+\.[0-9]+|localhost)|https://.*)(:[0-9]+)?(/.*)?$'
        [[ ! $proxy_path =~ $url_regex ]] && ynh_die \
        "For secure reason, you can't use an unencrypted http remote destination couple with ssowat for your reverse proxy: $proxy_path" 1
    fi

    # Don't allow trailing slash or additional URI components in proxy_path
    if [[ "$proxy_path" =~ ^https?:// ]]; then
        res="${proxy_path//[^\/]}"
        if [[ "${#res}" != "2" ]]; then
            if [[ "${#res}" = "3" ]] && [[ "$proxy_path" =~ /$ ]]; then
                # If it's only one trailing slash (no more components), just remove it
                proxy_path="${proxy_path::-1}"
            else
                ynh_die "Reverse proxy URL cannot contain additional slashes or components: $proxy_path" 1
            fi
        fi
    fi
}

# Verify that the requested assets path is valid
#   - is a local folder
#   - ends with a /
# Sets the alias line for serving static files,
# and the try_files line for trying those static files first
rp_validate_assets_path() {
    if [[ "$assets_path" = "" ]]; then
        assets_alias="# No static files to serve"
        try_files="try_files /dev/null @${app}--proxy;"
    else
        if [ ! -d "$assets_path" ]; then
            ynh_die "Requested assets path "$assets_path" does not exist" 1
        fi

        if [[ ! "$assets_path" =~ /$ ]]; then
            # Append missing trailing /
            assets_path=""${assets_path}"/"
        fi

        assets_alias="alias $assets_path;"
        try_files="try_files \$uri \$uri/ @${app}--proxy;"
    fi
}

# When the app is not in the webroot (path_url = /), need to add a redirect block
# to app/ so relative URLs work
rp_handle_webroot() {
    if [[ "$path_url" = "/" ]]; then
        path_url_slash="/"
        redirect_block="# Not needed for webroot"
    else
        path_url_slash=""$path_url"/"
        redirect_block="location = "$path_url" { return 302 "$path_url_slash"; }"
    fi
}
