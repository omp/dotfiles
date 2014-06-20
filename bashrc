if [[ $- != *i* ]]; then
	return
fi

shopt -s checkwinsize
shopt -s histappend

case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\033\\"'
		;;
esac

if [[ $(tput colors) -ge 8 ]]; then
	eval $(dircolors -b)

	if [[ ${EUID} == 0 ]]; then
		PS1='\[\033[01;31m\]\h\[\033[01;34m\] \w \$\[\033[00m\] '
	else
		PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
	fi

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'
else
	PS1='\u@\h \w \$ '
fi

export EDITOR=vim
export HISTSIZE=50000

rpath() { source <(~/dev/rpath/rpath.sh "${@}"); }
alias rp='rpath'
