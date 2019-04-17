set fish_greeting

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'

set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stashstate '!'
set __fish_git_prompt_char_untrackedfiles '.'
set __fish_git_prompt_char_stagedstate '+'
set __fish_git_prompt_char_stateseparator ''

set __fish_git_prompt_color_branch blue
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_stashstate yellow
set __fish_git_prompt_color_untrackedfiles yellow

if test -e ~/.aliases
    . ~/.aliases
end

