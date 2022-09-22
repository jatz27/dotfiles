# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^[o' 'lfcd\n'

# Load confgs zshrc
bindkey -s '^[z' 'source ~/.zshrc\n'

bindkey -s '^[g' 'lazygit\n'
