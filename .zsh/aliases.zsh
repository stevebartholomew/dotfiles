alias r='./bin/rails'
alias g='git'
alias rs='RAILS_ENV=test ./bin/rspec'
alias be='bundle exec'

alias e='nvim'

alias gb="git for-each-ref --sort=-committerdate --format='%(committerdate:iso8601) %(refname:short)' refs/heads/ | head"
alias gpo="git push --set-upstream origin $(git branch --show-current)"

alias s="ruby -run -e httpd . -p 8000"
