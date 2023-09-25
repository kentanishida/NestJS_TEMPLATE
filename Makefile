up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose up --build -d

logs:
	docker-compose logs -f

rs: down up

rb: down build

gr:
	npx prisma generate

mg:
	docker-compose exec nest-app npx prisma migrate dev --preview-feature

prrl:
	docker compose exec nest-app npx prisma-repl

rl:
	yarn start --entryFile repl

  

.PHONY: up down build logs rs prisma-generate prisma-migrate
