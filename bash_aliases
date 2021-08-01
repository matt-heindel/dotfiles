
# notify user that aliases were loaded
echo "executed ~/.bash_aliases"
echo "use command 'aliases' to see a list of all aliases"
echo

# remind user of set aliases
alias aliases='cat ~/.bash_aliases'

# list files
alias x='clear'
alias l='ls -CFt' # list files in columns, classified, sorted by most recent
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
alias gc='git commit'
alias gca='git commit -a'
alias gac='git add -A && git commit -m'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gpl='git pull'
alias gplo='git pull origin'
alias gbv='git branch -v'
alias grv='git remote -v'
alias gco='git checkout'
# update and merge main branch into a feature branch
# make sure to specify feature branch after command
gup() {
  git checkout main
  git pull
  git checkout "$@"
  git merge main
}

# launch file explorer / default browser
alias open='explorer.exe'

# install pomander for ESLint pre-commit linting
alias pom='curl -s https://raw.githubusercontent.com/reactorcore/pomander/master/bin/install | bash'

# navigating to common file paths
alias hr='cl ~/HackReactor'
alias toy='cd ~/HackReactor/hr-rfp54-toy-problems'

# navigate to pull request for submitting toy problem
alias submit='open https://github.com/hackreactor/hr-rfp54-toy-problems/compare/matt-heindel...matt-heindel:master'

# managing server ports
lport() { lsof -t -i:"$@"; } # list processes on specified port number
killport() { kill -9 $(lsof -t -i:"$@"); } # kill process on specified port number

# dev environment set up
alias install-babel="npm install --save-dev @babel/core @babel/cli @babel/preset-react"

# mysql
mysql-start() {
  sudo service mysql start
  sudo service mysql status
  mysql -u root -p
}

