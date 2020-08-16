# Created by newuser for 5.8
setopt PROMPT_SUBST
PROMPT="[%W %*]%F{2}%n%f:%F{12}%~%f$ "
TMOUT=1

TRAPALRM() {
	    zle reset-prompt
    }

alias ls="ls -la --color=auto"
