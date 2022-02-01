function proxy
    set addr http://127.0.0.1:8889
    if test "$argv" = "set"
        set -gx http_proxy "$addr"
        set -gx https_proxy "$addr"
    else if test "$argv" = "unset"
        set -e http_proxy
        set -e https_proxy
    else
        echo "wrong arguments"
    end
end
