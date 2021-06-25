
# notify user that aliases were loaded
echo "executed ~/.bash_aliases"
echo

# remind user of set aliases
alias aliases='cat ~/.bash_aliases'

# list files
alias l='ls -CF'
alias la='l -A'

# git commands
alias gml='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short --author="Matt Heindel"'
alias gl='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push origin master'

# launch file explorer / default browser
alias open='explorer.exe'

# install pomander for ESLint pre-commit linting
alias pom='curl -s https://raw.githubusercontent.com/reactorcore/pomander/master/bin/install | bash'

# navigation
alias hr='cd ~/HackReactor'

