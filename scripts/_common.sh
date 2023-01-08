# Verify that the requested reverse proxy destination is valid:
#   - protocol is http(s):// or unix: for socket file
#   - plaintext http is only allowed to localhost (to avoid leaking credentials on the network)
#   - http(s) destination is webroot, no additional component allowed (eg. http://localhost:1234/test is invalid)
rp_validate_proxy_path() {
    proxy_path="$1"

    if [[ ! $proxy_path =~ '^unix:/' ]]; then
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
