set -gx COLORTERM truecolor

# Load custom functions
if test -d $__fish_config_dir/custom_functions.d
    set -gp fish_function_path $__fish_config_dir/custom_functions.d
end

# Colorize man pages with bat or batcat
for cmd in bat batcat
    if command -qs $cmd
        set MANPAGER "sh -c 'col -bx | $cmd -l man -p'"
        break
    end
end

set -gx RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/ripgreprc"
set -x -U GOPATH $HOME/go

set -gx PNPM_HOME ~/.local/share/pnpm
fish_add_path $PNPM_HOME

fish_add_path $GOPATH/bin

fish_add_path $HOME/.local/bin
