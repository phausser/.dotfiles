# ZSH CONFIGURATION FILE

# USE EMACS KEYBINDINGS
bindkey -e


# STYLE
autoload -Uz colors vcs_info
colors

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '%F{red}*%f'
zstyle ':vcs_info:git:*' unstagedstr '%F{red}*%f'
zstyle ':vcs_info:git:*' formats '%F{blue}(%b%c%u%f%F{blue})%f '
zstyle ':vcs_info:git:*' actionformats '%F{blue}(%b|%a%c%u%f%F{blue})%f '

precmd() {
    vcs_info
}

setopt PROMPT_SUBST
PROMPT='%F{red}%n%f on %F{yellow}%m%f in %F{green}%~/%f ${vcs_info_msg_0_}> '


# Dir colors
LS_COLORS='no=0:fi=0:di=1;34:ln=1;36:pi=40;33:so=1;35:do=1;35:bd=40;33;1:cd=40;33;1:or=40;31;1:ex=1;32:*.tar=1;31:*.tgz=1;31:*.arj=1;31:*.taz=1;31:*.lzh=1;31:*.zip=1;31:*.rar=1;31:*.z=1;31:*.Z=1;31:*.gz=1;31:*.bz2=1;31:*.tbz2=1;31:*.deb=1;31:*.pdf=1;31:*.jpg=1;35:*.jpeg=1;35:*.gif=1;35:*.bmp=1;35:*.pbm=1;35:*.pgm=1;35:*.ppm=1;35:*.pnm=1;35:*.tga=1;35:*.xbm=1;35:*.xpm=1;35:*.tif=1;35:*.tiff=1;35:*.png=1;35:*.mpg=1;35:*.mpeg=1;35:*.mov=1;35:*.avi=1;35:*.wmv=1;35:*.ogg=1;35:*.mp3=1;35:*.mpc=1;35:*.wav=1;35:*.au=1;35:*.swp=1;30:*.pl=36:*.c=36:*.cc=36:*.h=36:*.core=1;33;41:*.gpg=1;33:'
ZLS_COLORS="$LS_COLORS"

COLORTERM=yes


# HISTORY
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt extended_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history


# COMPLETION
# Describe what an argument placeholder refers to in completion help.
zstyle ':completion:*' auto-description 'specify: %d'
# Try expansion, exact completion, typo correction, and approximate matches.
zstyle ':completion:*' completer _expand _complete _correct _approximate
# Show a simple heading for the current completion group.
zstyle ':completion:*' format 'Completing %d'
# Keep group names compact by using the default label.
zstyle ':completion:*' group-name ''
# Reuse LS_COLORS so completion lists match file listing colors.
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# Show a prompt when the completion list is paged.
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
# Match case-insensitively and treat dots, underscores, and dashes loosely.
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# Enable menu selection when the completion list gets long.
zstyle ':completion:*' menu select=long
# Show the current position while moving through the selection menu.
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
# Use the modern completion system instead of legacy compctl behavior.
zstyle ':completion:*' use-compctl false
# Display extra descriptions alongside completion candidates.
zstyle ':completion:*' verbose true
# Highlight process IDs in red in the kill completion list.
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
# Use a detailed process listing when completing arguments for kill.
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# CORRECTION
setopt correct

alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias mkdir='nocorrect mkdir'


# ALIASES
alias ..="cd .."
alias ...="cd ../.."
alias l="ls"
alias ll="ls -l"
alias la="ls -la"
alias lt="ls -lt"
alias -g L='|less'
alias -g T='|tail'


# LOAD AND RUN COMPINIT
autoload -U compinit
compinit -i


# LOAD LOCAL CONFIGURATION
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
[[ -f $HOME/.profile ]] && source $HOME/.profile
[[ -f $HOME/.aliases ]] && source $HOME/.aliases
