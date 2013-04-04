export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

#export PATH=${PATH}:/usr/local/mysql/bin:/Users/aeustace/dev/jad:/usr/local/share/python/google


# Create aliases that make it easier for you to manually start and stop the MySQL Daemon.
alias mysqlstart="sudo /Library/StartupItems/MySQLCOM/MySQLCOM start"
alias mysqlstop="sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop"
alias mysqlstatus="ps aux | grep mysql | grep -v grep"
alias db="mysql -uroot -poopp"
alias ws="cd /Users/aeustace/workspaces"
alias c="clear"
alias ..="cd .."
alias goo="cd ~/Google\ Drive/"
alias ..2="cd ../.."
alias agora="cd /Users/aeustace/workspaces/liu-agora/sk-liu-web"
alias gg="source /Users/aeustace/.gvm/bin/gvm-init.sh"
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 

# todo settings
alias td="cat ~/Google\ Drive/todo.txt"
alias ed="vi ~/Google\ Drive/todo.txt"
alias v="set -o vi"

# jot notes to buffer
b(){
 vi  ~/Google\ Drive/buffer.txt
}


#add todo 
t(){
 echo "$*" >> ~/Google\ Drive/todo.txt
}

# change dir and ls
cl() {
 cd $1 && ls
}

#tail liu app log
liu(){
 agora && cd logs
 tail -f liu-app.log
}

#tail liu stacktrace log
lst(){
 agora && cd target
 tail -f stacktrace.log
}

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# set vi mode for keybindings
set -o vi

# Customize to your needs...
export PATH=/Users/aeustace/.gvm/groovy/current/bin:/Users/aeustace/.gvm/grails/current/bin:/Users/aeustace/.gvm/griffon/current/bin:/Users/aeustace/.gvm/gradle/current/bin:/Users/aeustace/.gvm/vertx/current/bin:/Users/aeustace/.gvm/bin:/Users/aeustace/.gvm/ext:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/mysql/bin:/Users/aeustace/dev/jad:/usr/local/share/python

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/aeustace/.gvm/bin/gvm-init.sh" && -z $(which gvm-init.sh | grep '/gvm-init.sh') ]] && source "/Users/aeustace/.gvm/bin/gvm-init.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
