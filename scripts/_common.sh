# Characters that would break the generated NGINX configuration
rp_forbidden_chars='[[:space:];{}"\]'

# Verify that the requested reverse proxy destination is valid:
#   - protocol is http(s):// or unix: for socket file
#   - plaintext http to another machine is only allowed when the users' password is not passed (to avoid leaking credentials on the network)
#   - http(s) destination is webroot, no additional component allowed (eg. http://localhost:1234/test is invalid)
rp_validate_proxy_path() {
    [[ "$proxy_path" =~ $rp_forbidden_chars ]] && ynh_die "The destination cannot contain spaces, semicolons, braces, backslashes or double quotes"
    if [[ "$proxy_path" == unix:/* ]]; then
        # Final nginx config is http://unix:/path/to.socket
        proxy_path="http://$proxy_path"
    elif [[ ! "$proxy_path" == http://unix:/* ]]; then
        local local_regex='^(http://(127\.[0-9]+\.[0-9]+\.[0-9]+|localhost)|https://.*)(:[0-9]+)?(/.*)?$'
        if [[ ! "$proxy_path" =~ $local_regex ]]; then
            [[ "$proxy_path" =~ ^http:// ]] || ynh_die "The destination must start with http://, https:// or unix:"
            [[ "${sso_auth:-}" == "none" || "${sso_auth:-}" == "username" ]] || ynh_die \
            "Plain HTTP to another machine would send the users' password unencrypted on the network: pass only their identity, or nothing, to the app"
        fi

        # Don't allow trailing slash or additional URI components in proxy_path if not unix domain socket
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
        [[ "$assets_path" =~ $rp_forbidden_chars ]] && ynh_die "The static assets folder cannot contain spaces, semicolons, braces, backslashes or double quotes"
        if [ ! -d "$assets_path" ]; then
            ynh_die "Requested assets path ${assets_path} does not exist" 1
        fi

        if [[ ! "$assets_path" =~ /$ ]]; then
            # Append missing trailing /
            assets_path="${assets_path}/"
        fi

        assets_alias="alias $assets_path;"
        try_files="try_files \$uri \$uri/ @${app}--proxy;"
    fi
}

# When the app is not in the webroot (path = /), need to add a redirect block
# to app/ so relative URLs work
rp_handle_webroot() {
    if [[ "$path" = "/" ]]; then
        path_slash="/"
        redirect_block="# Not needed for webroot"
    else
        path_slash="$path"/
        redirect_block="location = ${path} { return 302 ${path_slash}; }"
    fi
}

# Installs made before the sso_auth setting keep what they had
rp_init_sso_auth() {
    if [ -z "${sso_auth:-}" ]; then
        if [ "$(ynh_app_setting_get --key=auth_header)" == "basic-without-password" ]; then
            sso_auth="username"
        else
            sso_auth="username_and_password"
        fi
        ynh_app_setting_set --key=sso_auth --value="$sso_auth"
    fi
}

rp_validate_sso_auth() {
    case "${sso_auth:-}" in
        username_and_password | username | none) ;;
        *) ynh_die "Unknown value for sso_auth: ${sso_auth:-}" ;;
    esac
}

# How much of the user's credentials a sso_auth value passes to the app
rp_sso_auth_level() {
    case "$1" in
        none) echo 0 ;;
        username) echo 1 ;;
        *) echo 2 ;;
    esac
}

# What SSOwat passes to the app for users logged in on the portal. Applied on
# every upgrade and restore, since the permission resource resets it.
# auth_header is set even for none: if the permission flag is turned back on
# and the setting is missing, SSOwat passes the password.
rp_apply_sso_auth() {
    rp_validate_sso_auth
    case "$sso_auth" in
        none)
            ynh_app_setting_set --key=auth_header --value="basic-without-password"
            ynh_permission_url --permission="main" --auth_header=false
            ;;
        username)
            ynh_app_setting_set --key=auth_header --value="basic-without-password"
            ynh_permission_url --permission="main" --auth_header=true
            ;;
        username_and_password)
            ynh_app_setting_set --key=auth_header --value="basic-with-password"
            ynh_permission_url --permission="main" --auth_header=true
            ;;
    esac
}
