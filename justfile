set dotenv-load

default:
	just --choose

clear:
	clear

up: clear
	docker compose up -d --build --remove-orphans

down: clear
	docker compose down
