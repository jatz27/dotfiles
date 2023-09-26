# MiniPlug
source "$HOME/.local/share/miniplug/miniplug.zsh"

# Define a plugin
miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'agkozak/zsh-z'
miniplug plugin 'zsh-users/zsh-history-substring-search'

# Source plugins
miniplug load
