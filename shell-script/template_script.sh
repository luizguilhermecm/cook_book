#!/usr/local/bin/zsh

# get dir of script
SHDIR=$(dirname $0)

confirm() {
    # call with a prompt string or use a default
    echo "Are you sure [y/n]?"
    read -r response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}


confirm && pwd
