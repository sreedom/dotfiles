
# added by Miniconda3 installer
export PATH="/Users/sarakkal/miniconda3/bin:$PATH"

# PS1 experiments

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/ (\1)/'
}

export PS1="\u@\h: \A \[$(tput setaf 2)\]\w\n\$(parse_git_branch)\$ \[$(tput sgr0)\]"

# autocomplete scripts
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Docker host changes
export DOCKER_HOST='unix:///var/run/docker.sock'

# easy access
export projects="$HOME/projects"
export atls="$HOME/projects/bitbucket.org/atlassian"

alias projects="cd $projects"
alias atls="cd $atls"
alias vim="nvim"

# cloudtoken additions
bashrc_additions="$HOME/miniconda3/share/cloudtoken/shell_additions/bashrc_additions"
if [[ -f $bashrc_additions ]]
then
	source $bashrc_additions
else
	echo "File not found"
fi

