# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

autoload -Uz compinit && compinit

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kolo"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git autojump ruby nvm-auto)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl@1.1/lib/"

#export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export SSL_CERT_FILE=/usr/local/etc/openssl@1.1/cert.pem

export PATH="/usr/local/opt/curl/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/curl/lib"
# export CPPFLAGS="-I/usr/local/opt/curl/include"
# export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

export NVM_DIR="/Users/alexander/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

plugins+=(zsh-auto-nvm-use)

# If you are not using a framework, or if on starting your shell you get an error message like 'command not found: compinit', then add this line before the ones above.

source ~/.zprofile

eval "$(direnv hook zsh)"
export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"
export PATH="/usr/local/opt/mozjpeg/bin:$PATH"

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home"

export PATH="/Users/alexander/Library/Python/2.7/bin:$PATH"

export PATH="$PATH:/Users/alexander/tizen-studio/tools/ide/bin/"

source ~/.zshtokens

nvm_auto_switch
