alias ..='cd ..'

alias cls='clear'
alias ll='ls -hFl --color=tty'
alias la='ls -hFa --color=tty'
alias lla='ls -hFal --color=tty'
alias ls='ls -hF --color=tty'
alias dir='ls -l --format=vertical'

alias df='df -h'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias taill='tail -n 5000'
alias webdir='cd /var/www/html'
alias ping='ping -c 10'

alias ic='ssh -l awethington 10.10.102.8'
alias icdb='ssh -l awethington 10.10.102.7'
alias intranet='ssh -l awethington 10.10.102.40'
alias intranetdb='ssh -l awethington 10.10.102.41'

alias editcron='vim /etc/crontab'

alias gitpush='git push origin master'
alias gitpull='git pull origin master'

# ps aux with arg compact
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# continue in case of problems
alias wget="wget -c"

cdls ()
{
    if [[ -n "$1" ]];
    then
        cd $1;
    else
        cd;
    fi
    ls
}

lsgrep ()
{
        pat="$1"
        shift
        if [ "$#" = "0" ]; then
                set "."
        fi
        for d in "$@"; do
                find '$d' -iname "*$pat*"
                shift
        done
}
