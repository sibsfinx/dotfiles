[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#


alias mate='/Applications/TextMate.app/Contents/Resources/mate'

alias hst='history'
alias hstg='history | grep'
alias pgrp='ps ax | grep'
alias grp='grep -r'
alias grpw='grep -rw'
alias fnd='find . -iname'
alias ghh='/usr/local/bin/gh'

alias vzp='vim ~/.zprofile'
alias vzps='source ~/.zprofile'

alias :tabedit='vim'

source $HOME/.zshshortcuts

export CODEPATH="$HOME//Documents/code"
export WORKPATH="$HOME//Documents/work"
export DROPBOXPATH="$HOME//Dropbox"
export COPYPATH="$HOME//Copy"
export HDDPATH="/Volumes/Macintosh\ HD/Users/sib/"
export RESOURCESPATH="/Volumes/Macintosh\ HD/Users/sib/Documents/install/resources/"
export WORKPATH2="/Volumes/Macintosh\ HD/Users/sib/Documents/work/"
export GDRIVEPATH="/Volumes/Macintosh\ HD/Users/sib/Documents/Google\ Drive/"
export MAMPFOLDER="~/Sites"
alias mamp="cd $MAMPFOLDER"
alias code="cd $CODEPATH"
alias work="cd $WORKPATH"
alias work2="cd $WORKPATH2"
alias dropbox="cd $DROPBOXPATH"
alias copyfolder="cd $COPYPATH"
alias gdrive="cd $GDRIVEPATH"
alias resources="cd /Volumes/Macintosh\ HD/Users/sib/Documents/install/resources/"
alias pngout='~/pngout'

alias dropbox="~/bin/dropbox.py"
alias skype_app_nap="defaults write com.skype.skype NSAppSleepDisabled -bool YES"

alias gitcopybranch="git branch|grep '*'|tr -d '* \n'|pbcopy"

alias bex='bundle exec'
#alias rsp='rvmsudo rails s -p 80'
alias bmm='bundle exec middleman'
alias bmmb='bundle exec middleman build'
alias brs='bundle exec rails s'
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
alias gts='grunt server'

alias tnf='terminal-notifier -message'

alias pss='python -m SimpleHTTPServer'

alias xcode="open *.xcworkspace"
alias xcodep="open *.xcodeproj"

#alias pfff="$CODEPATH/pfff/pfff"

alias photoshop='open -a "Adobe Photoshop CS6"'

alias nstd='nestor dashboard'
alias nstj='nestor job'
alias nstb='nestor build'

alias jkb='jekyll build'
alias jsw='jekyll serve --watch'
alias bjsw='bundle && jekyll serve --watch'

alias isim='/Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'

alias scss2sass='zsh ~/scss2sass.sh'
alias css2sass='zsh ~/css2sass.sh'
alias files_underscore='zsh ~/files_underscore.sh'
alias erb2slim='zsh ~/erb2slim.sh'


alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pg_status='pg_ctl -D /usr/local/var/postgres status'
alias redis_start='redis-server /usr/local/etc/redis.conf'
alias redis_s='redis-cli'
alias mysql_start='mysql.server start'
alias mysql_stop='mysql.server stop'
alias mysql_status='mysql.server status'

#alias ssh_yahu='ssh yahu_root@62.109.27.117'
#alias ssh_yahu='ssh root@146.185.166.25'
alias ssh_yahu='ssh root@146.185.166.25 -i $CODEPATH/7041_private_rsa.pem'

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I rc'

export CLOUDCONVERT_API_KEY='tfZD7vqmwAVoLISJDi9WUUyZ5VM9DekUhxmwoxjrHlk6bSs0z-4AubGmsZpvBC0E98MWsNNaJbiNIrqJWSFhjQ'

function gn {
    /usr/local/bin/growlnotify Finished -m "$@"
}

function long {
    $@
    /usr/local/bin/growlnotify Finished -m 'Done'
}


function gitopen {
    if [ -d .git ]; then
        remotes=$(git remote -v | awk -F'git@github.com:' '{print $2}' | cut -d" " -f1)
        if [ -z "$remotes" ];
        then
            remotes=$(git remote -v | awk -F'https://github.com/' '{print $2}' | cut -d" " -f1)
        fi

        remote_url=$(echo $remotes | cut -d" " -f1)
        url="https://github.com/"
        url="${url}${remote_url}"
        open $url
    else
      echo "Not a git repo"
    fi;
}

# Set my editor and git editor
export EDITOR=vim
export GIT_EDITOR=vim

# Set the path nginx
export NGINX_PATH='/opt/nginx'

#export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH"
export PATH="$PATH:/usr/local/opt/ruby/bin"
export RBENV_ROOT="/usr/local/var/rbenv"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


export SASS_LIBSASS_PATH="/usr/local/Cellar/libsass/1.0.1"
export NODE_PATH="/usr/local/lib/node"
export NODE_PATH="$NODE_PATH:/usr/local/lib/node_modules"
export PATH="/usr/local/share/npm/bin:$PATH"
#export PATH="$PATH:/Users/sib/android-sdks/platform-tools:/Users/sib/android-sdks/tools:$PATH"
export PATH="$PATH:/Applications/Android\ Studio.app/sdk/platform-tools:/Applications/Android\ Studio.app/sdk/tools"

export PERL5LIB="/usr/local/lib/perl5/site_perl/5.16.2"

#OCLINT_HOME="/Users/sib/Documents/code/oclint-0.8.1"
#export PATH=$OCLINT_HOME/bin:$PATH

#export PATH="/opt/gcc-4.2.0/bin/:$PATH"
#export PATH="/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/:$PATH"

# this is for rubygems
#export CC="/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/gcc-4.2"
#export CXX="/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/g++-4.2"
#export CPP="/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/cpp-4.2"
# this is for xcode:
#export CC=
#export CXX="/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/g++-4.2"
#export CPP="/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/cpp-4.2"
#
#updated:
export CC="/usr/local/Cellar/gcc/4.9.2_1/bin/gcc-4.9"
export CXX="/usr/local/Cellar/gcc/4.9.2_1/bin/g++-4.9"
export CPP="/usr/local/Cellar/gcc/4.9.2_1/bin/cpp-4.9"


#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/24.0.2
export ANDROID_HOME=/usr/local/opt/android-sdk
#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export ELASTICSEARCH_URL="/usr/local/bin/elasticsearch"

export PATH="$PATH:/usr/local/Cellar/advancecomp/1.18/bin:/usr/local/Cellar/gifsicle/1.77/bin:/usr/local/Cellar/jhead/2.97/bin:/usr/local/Cellar/jpegoptim/1.3.0/bin:/usr/local/Cellar/jpeg/8d/bin:/usr/local/Cellar/optipng/0.7.4/bin:/usr/local/Cellar/pngcrush/1.7.60/bin:/usr/bin/pngout"

export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

export rvmsudo_secure_path=1
