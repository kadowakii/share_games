.PHONY: init
init:
	bundle install

.PHONY: reset-db
reset-db:
	bundle exec rake db:migrate:reset RAILS_ENV=development
	bundle exec rake db:seed RAILS_ENV=development

.PHONY: test
test:
	bundle exec rails test