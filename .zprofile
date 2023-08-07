eval "$(/opt/homebrew/bin/brew shellenv)"

source $HOME/.zshshortcuts
# source ~/.git-prompt.sh

alias hst='history'
alias hstg='history | grep'
alias pgrp='ps ax | grep'
alias grp='grep -r'
alias grpw='grep -rw'
alias fnd='find . -iname'
alias ghh='/usr/local/bin/gh'

alias vzp='vim ~/.zprofile'
alias vzps='source ~/.zshrc'

alias :tabedit='vim'

export CODEPATH="$HOME//Documents/code"
export WORKPATH="$HOME//Documents/work"
alias codedir="cd $CODEPATH"
alias coded="cd $CODEPATH"

alias gitcopybranch="git branch|grep '*'|tr -d '* \n'|pbcopy"

alias bex='bundle exec'
alias bex='bundle install && bundle exec'
#alias rsp='rvmsudo rails s -p 80'
alias bmm='bundle exec middleman'
alias bmmb='bundle exec middleman build'
alias brs='bundle exec rails s'
alias brsp='bundle exec rails s -p'
alias bbrs='bundle install && bundle exec rails s'
alias rsv='sudo rails s'
alias rsp='sudo rails s -p 80'
alias dbc='bundle exec rake db:create'
alias dbm='bundle exec rake db:migrate'
alias dbs='bundle exec rake db:seed'
alias dbp='bundle exec cap db:pull'
alias brsv='bundle && sudo rails s'
alias brsp='bundle && sudo rails s -p 80'

alias odbc='bundle exec rake org:db:create'
alias odbm='bundle exec rake org:db:migrate'

alias bnd='bundle'
alias bnst='bundle install'

alias bwi='bower install'
alias npi='npm install'
alias npr='npm run-script'
alias nnpr='npm install && npm run-script'
alias gts='grunt server'

alias tnf='terminal-notifier -message'

alias pss='python -m SimpleHTTPServer'

alias xcode="open *.xcworkspace"
alias xcodep="open *.xcodeproj"

#alias pfff="$CODEPATH/pfff/pfff"

alias isim='/Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'

alias scss2sass='zsh ~/scss2sass.sh'
alias css2sass='zsh ~/css2sass.sh'
alias files_underscore='zsh ~/files_underscore.sh'
alias erb2slim='zsh ~/erb2slim.sh'

alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pg_status='pg_ctl -D /usr/local/var/postgres status'
alias memcached_start='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'
alias redis_start='redis-server /usr/local/etc/redis.conf'
alias redis_s='redis-cli'
alias mysql_start='mysql.server start'
alias mysql_stop='mysql.server stop'
alias mysql_status='mysql.server status'

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I rc'

alias woff2_compress='~/.bin/woff2_compress'
alias woff2_decompress='~/.bin/woff2_decompress'
alias woff2_info='~/.bin/woff2_info'




