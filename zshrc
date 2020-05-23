# Functions
source ~/.shell/functions.sh

# Allow local customizations in the ~/.shell_local_before file
if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before/
fi

# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# zsh-autosuggestions 
source /home/liangliang/Desktop/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Settings
source ~/.zsh/settings.zsh

# Bootstrap
source ~/.shell/bootstrap.sh

# External settings
source ~/.shell/external.sh

# Aliases
source ~/.shell/aliases.sh

# Custom prompt
source ~/.zsh/prompt.zsh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi

# customize

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/liangliang/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/liangliang/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/liangliang/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/liangliang/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
#export ARGOS_PLUGIN_PATH=~/.build_simepuck/plugins/robots/e-puck
export ARGOS_PLUGIN_PATH=$HOME/SR_Project_H414/build/
#export LD_LIBRARY_PATH=~/.mujoco/mjpro150/bin${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
#export MUJOCO_KEY_PATH=~/.mujoco${MUJOCO_KEY_PATH}
#export SPARK_HOME=/home/liangliang/spark-2.4.0-bin-hadoop2.7
#export PATH=$SPARK_HOME/bin:$PATH
#export PYSPARK_DRIVER_PYTHON=jupyter
#export PYSPARK_DRIVER_PYTHON_OPTS='notebook'


export NVM_DIR="/home/liangliang/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
