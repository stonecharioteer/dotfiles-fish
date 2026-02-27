$HOME/.local/bin/mise activate fish | source
# Aliases
alias vim='nvim'
# alias rm='echo \'Don\'t do zat.\''
fish_add_path $HOME/code/checkouts/personal/scripts
fish_add_path $HOME/.cargo/bin
if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    atuin init fish | source
    zoxide init fish | source
    fish_vi_key_bindings
    fx --comp fish | source
    direnv hook fish | source
    test -f $HOME/.local/bin/env.fish; and source $HOME/.local/bin/env.fish
end

# opencode
fish_add_path $HOME/.opencode/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

if test (uname) = Darwin
    set -gx ANDROID_HOME $HOME/Library/Android/sdk
    set -gx JAVA_HOME (/usr/libexec/java_home -v 21)
    fish_add_path $ANDROID_HOME/emulator
    fish_add_path $ANDROID_HOME/platform-tools
    # imagemagick
    fish_add_path /opt/homebrew/opt/imagemagick-full/bin
    set -gx LDFLAGS "-L/opt/homebrew/opt/imagemagick-full/lib"
    set -gx CPPFLAGS "-I/opt/homebrew/opt/imagemagick-full/include"
    set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/imagemagick-full/lib/pkgconfig"
end

alias glop='git log --oneline --pretty=format:"%C(auto)%h %Cgreen%ad %Cblue(%an)%Creset %s" --date=format:"%Y-%m-%d %H:%M"'
