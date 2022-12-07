start:
	export DOCKER_CONTENT_TRUST=1
	sudo docker build -t mynginx:server .
	sudo docker run -d -p 80:81 -v "$(shell pwd)":/etc/nginx mynginx:server
	sudo dockle mynginx:server

	