alias ls "eza --sort=type"
alias l "eza -l --git --sort=type"
alias ll "eza -lag --git --sort=type --total-size --smart-group --octal-permissions"
alias tree "eza --tree -L 2 --group-directories-first"

if command -q batcat
    alias bat batcat
end

for cmd in bat batcat
    if command -q $cmd
        alias cat "$cmd -pp"
        break
    end
end

if command -q batman
    alias man batman
end

if command -q prettybat
    alias pb prettybat
end

if command -q 7z
    alias archive "7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on $argv"
end

if command -q trash
    alias tm trash
    alias tmls trash-list
    alias tmgr "trash-list | grep -i"
    alias tmre trash-restore
end

if command -q trash && command -q du
    alias tmdu "du -sh ~/.local/share/Trash/files"
end

if command -q helix
    alias hx helix
end

alias q exit
alias c clear
