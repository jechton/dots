source /usr/share/cachyos-fish-config/cachyos-config.fish

for file in $__fish_config_dir/custom.d/*.fish
    source $file
end

if status is-interactive
    function starship_transient_prompt_func
        starship module character
    end
    starship init fish | source
    enable_transience

    zoxide init fish --cmd cd | source
end

function fish_greeting
end
