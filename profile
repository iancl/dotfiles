# color in terminal

#set -o vi

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LC_ALL=en_CA.UTF-8

export PATH=$HOME/opt/bin:$PATH
export PATH=$PATH:$HOME/opt/mongodb/bin
export DEVAPPS=$HOME/devapps
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

# JAVA FAMILY
export JAVA_HOME=$(/usr/libexec/java_home)
export GRADLE_HOME=~/opt/gradle/bin
export M2_HOME=$HOME/opt/apache-maven-3.2.1
export M2=$M2_HOME/bin
export PATH=$PATH:$M2:$GRADLE_HOME

# ANDROID
export ANDROID_SDK_HOME=$HOME/opt/android-sdk
export ANDROID_HOME=$ANDROID_SDK_HOME

# PYTHON PATH
export PYTHONPATH=$PYTHONPATH:~/Programmation/python/apps

# ALIASES
# Django
alias pyma="python manage.py"
alias pyrunserv="djma runserver"
alias djrun='djma runserver_plus 0.0.0.0:8000'
alias djserv=pyrunserv
alias djshell="pyma shell"

# SMTP SERVER DEV
alias smtpserv='python -m smtpd -n -c DebuggingServer localhost:1025'

# Git
alias glog='git log --graph --decorate --pretty=oneline --abbrev-commit'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [[ -z $HOME/.local_profile ]]; then
    . $HOME/.local_profile
fi

