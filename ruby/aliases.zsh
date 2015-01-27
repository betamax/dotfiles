alias r='rbenv local 1.8.7-p358'

alias fs='foreman start'

alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'
alias bx='bundle exec'
alias bi='bundle install'
alias rs='rails s'
alias cov='RUN_SIMPLECOV=true rspec spec'
alias rspec='nocorrect rspec'
alias rspecp='rake parallel:spec'

alias migrate='rake db:migrate && rake db:migrate RAILS_ENV=test'
alias migrate_parallel='rake db:migrate && rake parallel:prepare'