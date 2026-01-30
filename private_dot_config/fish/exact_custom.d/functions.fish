function hxp
    mkdir -p (dirname $argv)
    hx $argv
end

function mkcd
    mkdir -p $argv
    cd $argv
end
