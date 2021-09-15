
# notify user that aliases were loaded
echo "executed ~/.bash_aliases"
echo "use command 'aliases' to see a list of all aliases"
echo

# remind user of set aliases
alias aliases='cat ~/.bash_aliases'

# list files
alias x='clear'
alias l='ls -CFtG' # list files in columns, classified, sorted by most recent, colorized
alias lfs='ls -sSh1' # list files sorted by and displaying size in human readable single column
alias la='l -A'  # list all files including hidden
cl() { cd "$@" && l; } # change directory and list files in custom format

# git commands
alias gml='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short --author="Matt Heindel"'
alias gl='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gl10='gl -n 10'
alias gl20='gl -n 20'
alias gs='git status'
alias gf='git fetch'
alias gsw='git show'
gswh() { git show HEAD"$@"; }
alias gd='git diff'
gdh() { git diff HEAD"$@"; }
alias ga='git add'
alias grs='git restore --staged'
alias gc='git commit'
alias gca='git add -A && git commit'
alias gcam='git add -A && git commit -m'
alias gph='git push'
alias gpho='git push origin'
alias gpl='git pull'
alias gplo='git pull origin'
alias gplu='git pull upstream'
alias gbv='git branch -v'
alias grv='git remote -v'
alias gco='git checkout'

# launch file explorer / default browser
alias open='explorer.exe'

# navigating to common file paths
alias hr='cl ~/HackReactor'
alias clcode='cl ~/code'
alias toy='cd ~/code/toy-problems'
alias ..='cl ..'

# navigate to pull request for submitting toy problem
submit() {
  gpho master;
  open https://github.com/hackreactor/hr-rfp54-toy-problems/compare/matt-heindel...matt-heindel:master;
}

# managing server ports
lport() { lsof -t -i:"$@"; } # list processes on specified port number
killport() { kill -9 $(lsof -t -i:"$@"); } # kill process on specified port number
