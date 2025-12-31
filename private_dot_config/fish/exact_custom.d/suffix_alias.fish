function bat_open
    echo bat $argv
end

function jless_open
    echo jess $argv
end

function glow_open
    echo glow $argv
end

function helix_open
    echo helix $argv
end

abbr -a jless_open_json --position command --regex ".+\.json" --function jless_open
abbr -a helix_open_go --position command --regex ".+\.go" --function helix_open
abbr -a helix_open_python --position command --regex ".+\.py" --function helix_open
abbr -a helix_open_js --position command --regex ".+\.js" --function helix_open
abbr -a helix_open_ts --position command --regex ".+\.ts" --function helix_open
abbr -a helix_open_md --position command --regex ".+\.md" --function glow_open
abbr -a helix_open_txt --position command --regex ".+\.txt" --function bat_open
abbr -a helix_open_log --position command --regex ".+\.log" --function bat_open
