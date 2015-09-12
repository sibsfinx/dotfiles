#!/usr/bin/env bash

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

alias mate='/Applications/TextMate.app/Contents/Resources/mate'

alias bex='bundle exec'
alias rsp='rvmsudo rails s -p 80'
alias dbc='bundle exec rake db:create'
alias dbm='bundle exec rake db:migrate'
alias dbp='bundle exec cap db:pull'
alias brsp='bundle && rvmsudo rails s -p 80'

alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pg_status='pg_ctl -D /usr/local/var/postgres status'

# git
source ~/.git-prompt.sh
#export PS1='\[\033[01;31m\]\w \[\033[00m\]\[\033[01;32m\]`__git_ps1 "%s"`\[\033[00m\] \$ '
#source ~/.git-completion.bash
#source ~/rails.bash

# Set my editor and git editor
export EDITOR=vim
export GIT_EDITOR=vim

# Set the path nginx
export NGINX_PATH='/opt/nginx'

#export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH"

export rvmsudo_secure_path=1
