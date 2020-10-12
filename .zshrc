# Created by newuser for 5.8
setopt PROMPT_SUBST
PROMPT="[%W %*]%F{2}%n@%m%f:%F{12}%~%f$ "
TMOUT=1

TRAPALRM() {
	    zle reset-prompt
    }

alias ls="ls -la --color=auto"

##############################################################################
## History Configuration
###############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
##HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

# Start tmux on new session
if [ -z "$TMUX_PANE" ]
then
	tmux
fi
