if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x RUSTUP_DIST_SERVER  https://mirrors.ustc.edu.cn/rust-static
set -x RUSTUP_UPDATE_ROOT  https://mirrors.ustc.edu.cn/rust-static/rustup

set -x EDITOR nvim

abbr -a ls exa
abbr -a lt exa -T
abbr -a ll exa -l
abbr -a l exa -al
abbr -a px4 proxychains4 -q
abbr -a cat bat

fish_vi_key_bindings

zoxide init fish | source
starship init fish | source 
