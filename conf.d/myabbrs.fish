abbr -a -- tmux tmux -u
abbr -a -- t tmux -u
abbr -a -- ta tmux -u attach
abbr -a -- tns tmux -u new -s
abbr -a -- g git
abbr -a -- ga git add
abbr -a -- gp git pull
abbr -a -- gco git checkout
abbr -a -- gss git status -s
abbr -a -- glop git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
abbr -a -- l lsd
abbr -a -- la lsd -a
abbr -a -- ll lsd -l
abbr -a -- lla lsd -la
abbr -a -- lt lsd --tree
abbr -a B --position anywhere --set-cursor "% | bat"
abbr -a E --position anywhere --set-cursor "% 2>&1"
abbr -a cheat --set-cursor "curl cht.sh/%"
# OS-dependent clipboard abbreviation
if test (uname) = Darwin
    abbr -a C --position anywhere --set-cursor "% | pbcopy"
else
    abbr -a C --position anywhere --set-cursor "% | xclip -selection clipboard"
end
abbr -a -- trash  uvx --from trash-cli trash-put 
abbr -a -- trash-empty uvx --from trash-cli trash-empty
abbr -a -- trash-list uvx --from trash-cli trash-list
abbr -a -- trash-put  uvx --from trash-cli trash-put 
abbr -a -- trash-restore uvx --from trash-cli trash-restore
abbr -a -- trash-rm uvx --from trash-cli trash-rm

