# FISH CONFIG by patrickhausser

# Disable the default greeting.
set fish_greeting

# Emacs-style keybindings explicitly.
fish_default_key_bindings

# Keep directory/listing colors consistent with zsh setup.
set -gx LS_COLORS 'no=0:fi=0:di=1;34:ln=1;36:pi=40;33:so=1;35:do=1;35:bd=40;33;1:cd=40;33;1:or=40;31;1:ex=1;32:*.tar=1;31:*.tgz=1;31:*.arj=1;31:*.taz=1;31:*.lzh=1;31:*.zip=1;31:*.rar=1;31:*.z=1;31:*.Z=1;31:*.gz=1;31:*.bz2=1;31:*.tbz2=1;31:*.deb=1;31:*.pdf=1;31:*.jpg=1;35:*.jpeg=1;35:*.gif=1;35:*.bmp=1;35:*.pbm=1;35:*.pgm=1;35:*.ppm=1;35:*.pnm=1;35:*.tga=1;35:*.xbm=1;35:*.xpm=1;35:*.tif=1;35:*.tiff=1;35:*.png=1;35:*.mpg=1;35:*.mpeg=1;35:*.mov=1;35:*.avi=1;35:*.wmv=1;35:*.ogg=1;35:*.mp3=1;35:*.mpc=1;35:*.wav=1;35:*.au=1;35:*.swp=1;30:*.pl=36:*.c=36:*.cc=36:*.h=36:*.core=1;33;41:*.gpg=1;33:'
set -gx ZLS_COLORS "$LS_COLORS"
set -gx COLORTERM yes

# Show useful git states in the prompt.
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'

# Keep git state markers compact.
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stashstate '!'
set __fish_git_prompt_char_untrackedfiles '.'
set __fish_git_prompt_char_stagedstate '+'
set __fish_git_prompt_char_stateseparator ''

# Color git prompt segments for quick scanning.
set __fish_git_prompt_color_branch blue
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_stashstate yellow
set __fish_git_prompt_color_untrackedfiles yellow

# Core aliases
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -lt'

# Load shared aliases only if the file looks fish-compatible.
if test -e ~/.aliases
    if not string match -rq '(^|[[:space:]])(shopt|setopt)[[:space:]]|alias[[:space:]]+-g[[:space:]]|\[\[' ~/.aliases
        . ~/.aliases
    end
end

# Load optional machine-local fish overrides.
if test -e ~/.fishrc
    . ~/.fishrc
end
