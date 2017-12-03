# .bashrc

if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function start_agent {
	echo "Initialising new SSH agent..."
	/usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	echo succeeded
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
	/usr/bin/ssh-add;
}

function load_ssh_env {
	# Source SSH settings, if applicable
	if [ -f "${SSH_ENV}" ]; then
		. "${SSH_ENV}" > /dev/null
		#ps ${SSH_AGENT_PID} doesn't work under cywgin
		ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent > /dev/null || {
		 start_agent;
		}
	else   
		start_agent;
	fi
}


load_ssh_env


# golang

export GOPATH=$HOME/gohome


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

alias vimT='vim +NERDTree'
