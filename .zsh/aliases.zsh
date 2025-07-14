alias r='./bin/rails'
alias g='git'
alias rs='RAILS_ENV=test ./bin/rspec'
alias be='bundle exec'

alias gb="git for-each-ref --sort=-committerdate --format='%(committerdate:iso8601) %(refname:short)' refs/heads/ | head"
alias gpo="git push --set-upstream origin $(git branch --show-current)"
