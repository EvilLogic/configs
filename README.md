# Linux Pentesting Configs!

My basic configs for greater logging capabilities and general shell usage. Logs the *time each command is run* via the prompt and has some general plugins for tmux, vim, and zsh. Note that these configs assume you are always within tmux.

Does not include oh-my-zsh, but is probably compatible.

## tmux

* Mouse is enabled with some general fixes
* Select automatically copies - comment out tmux-yank to disable this
* Logging is added to act as a script replacement
  * prefix + alt + p screenshots the current pane
  * prefix + alt + shift + p saves the pane's entire history
  * prefix + shift + p toggles logging. This is similar to script, I don't recommend this as it has bugs with the real-time clock

## zsh

* Keeps 5000 lines in history, history is shared between windows and panes
* Realtime clock added to prompt for time-of-execution logs
* ll alias added for "ls -la"