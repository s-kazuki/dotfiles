# system
alias rm="rm -i"
alias power='upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"'
alias open="xdg-open"

# search
alias findlist='grep -rl'
alias findall='find . -type f | xargs grep -n'

# emacs
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -a emacs"
alias e='emacsclient -nw -a ""'
alias emacs='emacsclient -nw -a ""'
alias ekill='emacsclient -e "(kill-emacs)"'

## git
alias gs='git status'
alias gpull='echo "pulling branch: `git rev-parse --abbrev-ref HEAD`" && git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gpulld='git pull origin dev'
alias gpullde='git pull origin develop'
alias gcheck='git checkout'
alias gcheckd='gcheck dev'
alias gcheckde='gcheck develop'
alias gb='git branch'
alias gba='git branch -a'
alias gbv='git branch -va'
alias gbn='git checkout -b'
alias gbd='git branch -D'
alias gbda='git branch -D $(git branch | grep -e "issue" | xargs)'
alias gbdr='git push origin'
alias ga='git add . --all'
alias gcom='git commit -m'
alias gcome='git commit --allow-empty -m'
alias gd='git diff'
alias gf='git fetch --prune'
alias gpush='echo "pushing branch: `git rev-parse --abbrev-ref HEAD`" && git push origin `git rev-parse --abbrev-ref HEAD`'
alias gp='git remote prune origin'
alias glog='git log'

## github
# eval "$(hub alias -s)"

## docker
alias dp='docker ps -a'
alias drmp='docker stop $(docker ps -aq) && docker rm $(docker ps -aq)'
alias di='docker images'
alias drmi='docker rmi $(docker images -f "dangling=true" -q)'
alias dv='docker volume ls'
alias drmv='docker volume rm $(docker volume ls -qf dangling=true)'
alias dexec='docker exec -ti'
alias dcup='docker-compose up -d'
alias dcups='docker-compose up'
alias dcstop='docker-compose stop'
alias dcdown='docker-compose down'
alias dcrun='docker-compose run --rm'
alias dbuild='docker-compose build'
alias dclog='docker-compose logs -f'
alias dres='docker-compose restart'
