if status is-interactive
    # Commands to run in interactive sessions can go here
    $HOME/.local/bin/mise activate fish | source
    starship init fish | source
    atuin init fish | source
    zoxide init fish | source
    fish_vi_key_bindings
    fx --comp fish | source
    source $HOME/.local/bin/env.fish
end

# alias rm='echo \'Don\'t do zat.\''
fish_add_path $HOME/code/checkouts/personal/scripts
fish_add_path $HOME/.cargo/bin
