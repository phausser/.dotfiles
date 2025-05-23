function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
    set_color magenta
    printf '%s' (whoami)

    set_color normal
    printf ' at '

    set_color yellow
    echo -n (prompt_hostname)

    set_color normal
    printf ' in '

    set_color $fish_color_cwd
    printf '%s ' (prompt_pwd)

    if test -n "$(__fish_git_prompt)"
        set_color normal
        printf '%s ' (__fish_git_prompt)
    end

    if test -n "$VIRTUAL_ENV"
        set_color yellow
        printf '%s ' (basename $VIRTUAL_ENV)
    end

    set_color normal
end
