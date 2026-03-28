# FISH CONFIG by patrickhausser

# Disable the default greeting.
set fish_greeting

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
