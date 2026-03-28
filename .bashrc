# BASH CONFIGURATION by patrickhausser

# Only run the interactive setup for interactive shells.
case $- in
    *i*) ;;
    *) return ;;
esac


# USE EMACS KEYBINDINGS
set -o emacs


# STYLE
export LS_COLORS='no=0:fi=0:di=1;34:ln=1;36:pi=40;33:so=1;35:do=1;35:bd=40;33;1:cd=40;33;1:or=40;31;1:ex=1;32:*.tar=1;31:*.tgz=1;31:*.arj=1;31:*.taz=1;31:*.lzh=1;31:*.zip=1;31:*.rar=1;31:*.z=1;31:*.Z=1;31:*.gz=1;31:*.bz2=1;31:*.tbz2=1;31:*.deb=1;31:*.pdf=1;31:*.jpg=1;35:*.jpeg=1;35:*.gif=1;35:*.bmp=1;35:*.pbm=1;35:*.pgm=1;35:*.ppm=1;35:*.pnm=1;35:*.tga=1;35:*.xbm=1;35:*.xpm=1;35:*.tif=1;35:*.tiff=1;35:*.png=1;35:*.mpg=1;35:*.mpeg=1;35:*.mov=1;35:*.avi=1;35:*.wmv=1;35:*.ogg=1;35:*.mp3=1;35:*.mpc=1;35:*.wav=1;35:*.au=1;35:*.swp=1;30:*.pl=36:*.c=36:*.cc=36:*.h=36:*.core=1;33;41:*.gpg=1;33:'
export COLORTERM=yes

__bash_git_prompt() {
    command -v git >/dev/null 2>&1 || return 0
    git rev-parse --is-inside-work-tree >/dev/null 2>&1 || return 0

    local branch dirty

    branch=$(git symbolic-ref --quiet --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null) || return 0

    if ! git diff --no-ext-diff --quiet --ignore-submodules 2>/dev/null || \
       ! git diff --no-ext-diff --quiet --ignore-submodules --cached 2>/dev/null; then
        dirty='*'
    fi

    printf '\[\e[34m\](%s' "$branch"
    if [ -n "$dirty" ]; then
        printf '\[\e[31m\]%s\[\e[34m\]' "$dirty"
    fi
    printf ')\[\e[0m\] '
}

__bash_update_prompt() {
    local git_segment

    git_segment="$(__bash_git_prompt)"
    PS1="\[\e[31m\]\u\[\e[0m\] on \[\e[33m\]\h\[\e[0m\] in \[\e[32m\]\w/\[\e[0m\] ${git_segment}> "
}


# HISTORY
HISTFILE=$HOME/.bash_history
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth:erasedups

shopt -s cmdhist
shopt -s histappend
shopt -s histverify

__bash_precmd() {
    history -a
    history -n
    __bash_update_prompt
}

PROMPT_COMMAND=__bash_precmd


# COMPLETION
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
bind 'set colored-stats on'
bind 'set visible-stats on'
bind 'set mark-symlinked-directories on'


# CORRECTION
shopt -s cdspell
shopt -s dirspell


# ALIASES
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -lt'


# LOAD LOCAL CONFIGURATION
[[ -f $HOME/.bashrc.local ]] && source "$HOME/.bashrc.local"
[[ -f $HOME/.profile ]] && source "$HOME/.profile"
[[ -f $HOME/.aliases ]] && source "$HOME/.aliases"
