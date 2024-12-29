clear: 
	docker stop minecraft-server
	docker rm minecraft-server
	docker volume rm minecraft-papermc-build_minecraft_server_volume

up: 
	docker-compose up

build: 
	docker-compose build