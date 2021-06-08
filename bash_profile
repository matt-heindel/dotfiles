echo "executed ~/.bash_profile"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Navigate to most commonly used folder
cd HackReactor

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export VISUAL=vim
export EDITOR="$VISUAL"
export BASH_SILENCE_DEPRECATION_WARNING=1

