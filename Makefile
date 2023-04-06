.PHONY: test
test:
	docker-compose run --rm app bundle exec rspec

.PHONY: run
run:
	docker-compose run --rm -p 3000:3000 app bundle exec rails s

.PHONY: run-db
run-db:
	docker-compose run --rm -p 5432:5432 db
