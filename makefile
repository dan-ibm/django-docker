container_py       = web
container_db        = db

ownership: #Set ownership
	@sudo chown -R $(USER):$(USER) .


start: #start docker containers @docker-compose up -d
	@docker-compose up -d

stop: #stop docker containers
	@docker-compose down

show: #show docker's containers
	@sudo docker ps

connect_app: #Connect to APP container
	@docker-compose exec $(container_py) bash

connect_db: #Connect to DB container
	@docker-compose exec $(container_db) bash