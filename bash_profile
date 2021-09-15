
# notify user that profile was loaded
echo "executed ~/.bash_profile"

# call ~/.bashrc if found
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# navigate to most commonly used folder and display welcome message
echo "Welcome!"
echo "What project would you like to hack on today?"
clcode

# load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# for mac don't notify user to use zsh
export BASH_SILENCE_DEPRECATION_WARNING=1

