.PHONY: init
init: ## create .env.local file from .env
	cp -u -p .env .env.local

.PHONY: up
up: ## create and start containers in the background
	docker compose up -d --build

.PHONY: down
down: ## stop and remove containers, networks
	docker compose down

.PHONY: install
install: ## install
	symfony composer install
	symfony console doctrine:database:create
	symfony console doctrine:migrations:migrate -n
	symfony console doctrine:fixtures:load -n

.PHONY: reset-db
reset-db: ## reset database
	symfony console doctrine:database:drop --force
	symfony console doctrine:database:create
	symfony console doctrine:migrations:migrate -n
	symfony console doctrine:fixtures:load -n

.PHONY: start
start: ## run symfony local web server in the background
	symfony server:start -d
	symfony run -d --watch=config,src,templates,vendor symfony console messenger:consume async -vv

.PHONY: log-symfony
log-symfony: ## display local web server logs
	symfony server:log

.PHONY: log-docker
log-docker: ## display docker compose logs
	docker compose logs -f

tests:
	symfony console doctrine:database:drop --force --env=test || true
	symfony console doctrine:database:create --env=test
	symfony console doctrine:migrations:migrate -n --env=test
	symfony console doctrine:fixtures:load -n --env=test
	symfony php bin/phpunit $@
.PHONY: tests
