.PHONY: init
init:
	yarn install
	bundle install

.PHONY: reset-db
reset-db:
	bundle exec rake db:migrate:reset RAILS_ENV=development
	bundle exec rake db:seed RAILS_ENV=development

.PHONY: seed
seed:
	bundle exec rake db:seed RAILS_ENV=development

.PHONY: test
test:
	bundle exec rails test

.PHONY: reset-precompile
reset-precompile:
	bundle exec rake assets:clobber assets:precompile

.PHONY: heroku-seed
heroku-seed:
	heroku run  DISABLE_DATABASE_ENVIRONMENT_CHECK=1 rake db:migrate:reset
	heroku run rake db:seed
