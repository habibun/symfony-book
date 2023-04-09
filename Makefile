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

.PHONY: start
start: ## run symfony local web server in the background
	symfony server:start -d

.PHONY: log
log: ## display local web server logs
	symfony server:log
