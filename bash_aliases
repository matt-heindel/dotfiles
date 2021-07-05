
# notify user that aliases were loaded
echo "executed ~/.bash_aliases"
echo

# remind user of set aliases
alias aliases='cat ~/.bash_aliases'

# list files
alias l='ls -CFt' # list files in columns, classified, sorted by most recent 
alias la='l -A'  # list all files including hidden
cl() { cd "$@" && l; } # change directory and list files in custom format

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
alias hr='cl ~/HackReactor' 
alias toy='cd ~/HackReactor/hr-rfp54-toy-problems'

# navigate to pull request for submitting toy problem
alias submit='open https://github.com/hackreactor/hr-rfp54-toy-problems/compare/matt-heindel...matt-heindel:master'

# managing server ports
lport() { lsof -t -i:"$@"; } # list processes on specified port number
killport() { kill -9 $(lsof -t -i:"$@"); } # kill process on specified port number


