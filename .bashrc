#!/bin/bash
# AHL standard profile - do not remove the following line!
# Put customisations here...

if [ `hostname -d` = "maninvestments.com" ]; then
    . /etc/bashrc.ahl
    #export SELENIUM_PORT=9515
    #export SELENIUM_HOST=LONW13241
    #export PY_BACKEND=agg
    deactivate
    use_python_2_7_3
    use_python

    export PATH=$HOME/app/pycharm/bin:$HOME/bin:/apps/research/python/bin:/apps/research/tools/bin:$PATH
    alias sqlplus="rlwrap -i -f ~/.sqlplus_history -H ~/.sqlplus_history -s 30000 sqlplus"
    alias 'gith'='withproxy git'

    if [ `hostname -s` = "lonahlws27" ]; then
        export MONGOOSE_CENTAUR_DB=localhost
        pgrep -f 27017 || ssh -L27017:centaur.dev.man.com:27017 -fN cn90
    fi    
fi

export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
#source ~/.dotfiles/git-prompt.sh
source ~/.dotfiles/git-completion.bash
