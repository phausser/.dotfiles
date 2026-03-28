# BASH CONFIGURATION by patrickhausser

# Interactive shells only
case $- in
    *i*) ;;
    *) return ;;
esac

# Editing mode
set -o emacs

# Sensible shell behavior
shopt -s checkwinsize
shopt -s histappend
shopt -s cmdhist
shopt -s histverify
shopt -s cdspell

# History
HISTFILE="$HOME/.bash_history"
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth:erasedups

__bash_git_segment() {
    [ "${BASH_PROMPT_GIT:-1}" = "1" ] || return 0
    command -v git >/dev/null 2>&1 || return 0
    git rev-parse --is-inside-work-tree >/dev/null 2>&1 || return 0

    local branch dirty

    branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null) || return 0
    git diff --no-ext-diff --quiet --ignore-submodules --cached 2>/dev/null || dirty='*'
    git diff --no-ext-diff --quiet --ignore-submodules 2>/dev/null || dirty='*'

    if [ -n "$dirty" ]; then
        printf ' \[\e[38;5;33m\](%s\[\e[38;5;196m\]*\[\e[38;5;33m\])\[\e[0m\]' "$branch"
    else
        printf ' \[\e[38;5;33m\](%s)\[\e[0m\]' "$branch"
    fi
}

__bash_update_prompt() {
    local git_part=""
    git_part="$(__bash_git_segment)"

    if [ -n "$TERM" ] && [ "$(tput colors 2>/dev/null || echo 0)" -ge 8 ]; then
        PS1="\[\e[38;5;196m\]\u\[\e[0m\] on \[\e[38;5;220m\]\h\[\e[0m\] in \[\e[38;5;40m\]\w\[\e[0m\]${git_part} > "
    else
        PS1="\u@\h:\w${git_part} > "
    fi
}

__bash_precmd() {
    history -a
    history -n
    __bash_update_prompt
}

PROMPT_COMMAND="__bash_precmd${PROMPT_COMMAND:+;${PROMPT_COMMAND}}"

# Completion
if [ -r /opt/homebrew/etc/profile.d/bash_completion.sh ]; then
    . /opt/homebrew/etc/profile.d/bash_completion.sh
elif [ -r /usr/local/etc/profile.d/bash_completion.sh ]; then
    . /usr/local/etc/profile.d/bash_completion.sh
elif [ -r /etc/bash_completion ]; then
    . /etc/bash_completion
fi

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set show-all-if-unmodified on'
bind 'set mark-symlinked-directories on'

# Prompt switch
# Set BASH_PROMPT_GIT=0 to disable git info in the prompt.

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -lt'

# Local overrides
[[ -f "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"
[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
