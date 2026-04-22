# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jeison/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Sintax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Keybinds for navigation
source ~/.zsh/input/init.zsh

# Default Apps

export EDITOR="micro"

# Welcome System Message
# neofetch

# Better ls command
alias ls='eza --long --color=always --icons=always --no-user'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Better cd command
eval "$(zoxide init zsh)"

# Fuzzy finder
eval "$(fzf --zsh)"

# Alias for packages
alias cd='z'
alias cat='bat'

# Alias for apps
alias explorer='yazi'
alias search='fzf'

# Alias for TUIs
alias yay-tui='pacseek'
alias journalctl-tui='lazyjournal'

# SSH Agent should be running, once
# runcount=$(ps -ef | grep "ssh-agent" | grep -v "grep" | wc -l)
# if [ $runcount -eq 0 ]; then
#     echo Starting SSH Agent
#     eval $(ssh-agent -s)
# fi

# Matlab Runtime
# export LD_LIBRARY_PATH=/usr/local/MATLAB/MATLAB_Runtime/R2024b/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/R2024b/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/R2024b/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/R2024b/extern/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/R2024b/sys/opengl/lib/glnxa64

# Fix Matlab Runtime breaking a library
# export LD_PRELOAD=/lib/x86_64-linux-gnu/libstdc++.so.6
# . "$HOME/.local/bin/env"
