SHELL := /bin/bash
EXEC_COMMAND ?= docker-compose exec app

install: create_networks build up install_npm
start: install up
build:
	docker-compose build
install_npm:
	${EXEC_COMMAND} npm ci
up:
	docker-compose up -d
bash:
	${EXEC_COMMAND} bash
create_networks:
	docker network create nginx-proxy || true
clear:
	docker-compose down
