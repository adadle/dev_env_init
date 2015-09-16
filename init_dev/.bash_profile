# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# alias here
alias ll='ls -alt'

# User specific environment and startup programs
export CLICOLOR=1
export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \W\$\[\033[00m\]=>'
export LSCOLORS=gxfxaxdxcxegedabagacad 

