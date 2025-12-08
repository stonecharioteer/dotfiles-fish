abbr -a -- tmux tmux -u
abbr -a -- t tmux -u
abbr -a -- ta tmux -u attach
abbr -a -- tns tmux -u new -s
abbr -a -- g git
abbr -a -- ga git add
abbr -a -- gaa git add --all
abbr -a -- gap git add --patch
abbr -a -- gb git branch
abbr -a -- gba git branch -a
abbr -a -- gbd git branch -d
abbr -a -- gc git commit
abbr -a -- gcm git commit -m
abbr -a -- gca git commit --amend
abbr -a -- gco git checkout
abbr -a -- gcb git checkout -b
abbr -a -- gd git diff
abbr -a -- gds git diff --staged
abbr -a -- gf git fetch
abbr -a -- gl git log
abbr -a -- glop git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
abbr -a -- gm git merge
abbr -a -- gp git pull
abbr -a -- gpr git pull --rebase
abbr -a -- gps git push
abbr -a -- gpf git push --force-with-lease
abbr -a -- gr git remote
abbr -a -- grv git remote -v
abbr -a -- grb git rebase
abbr -a -- grbi git rebase -i
abbr -a -- grs git restore
abbr -a -- grss git restore --staged
abbr -a -- gs git status
abbr -a -- gss git status -s
abbr -a -- gst git stash
abbr -a -- gsta git stash apply
abbr -a -- gstp git stash pop
abbr -a -- gstl git stash list
abbr -a -- gsw git switch
abbr -a -- gswc git switch -c
abbr -a -- l lsd
abbr -a -- la lsd -a
abbr -a -- ll lsd -l
abbr -a -- lla lsd -la
abbr -a -- lt lsd --tree
abbr -a B --position anywhere --set-cursor "% | bat"
abbr -a E --position anywhere --set-cursor "2>&1 "

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
abbr -a -- docker-compose docker compose
abbr -a wtf --set-cursor -- 'lsof -i tcp:%'
abbr -a be -- bundle exec
abbr -a ber -- bundle exec ruby
abbr -a yolo -- claude --dangerously-skip-permissions
abbr -a vim -- nvim
abbr -a -- dc docker compose
abbr -a -- dcl docker compose logs
abbr -a -- dclf docker compose logs -f
abbr -a -- dclf1 docker compose logs -f --tail=100
abbr -a -- dcu docker compose up
abbr -a -- dcud docker compose up -d
abbr -a -- dcudb docker compose up -d --build
abbr -a -- dcd docker compose down
abbr -a -- dcdn docker compose down --volumes
abbr -a -- dcr docker compose restart
abbr -a -- dcb docker compose build
abbr -a -- dce docker compose exec
abbr -a -- dcps docker compose ps
abbr -a -- dcpa docker compose ps -a
abbr -a -- dcpull docker compose pull
abbr -a -- dps docker ps
abbr -a -- dpsa docker ps -a
abbr -a -- di docker images
abbr -a -- drmi docker rmi
abbr -a -- drmf docker rm -f
abbr -a -- dprune docker system prune -af --volumes
