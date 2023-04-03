.PHONY: test
test:
	docker-compose run --rm app bundle exec rspec

.PHONY: run
run:
	docker-compose run --rm -p 3000:3000 app bundle exec rails s
