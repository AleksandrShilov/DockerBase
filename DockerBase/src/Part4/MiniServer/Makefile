start:
	sudo docker build -t mynginx .
	sudo docker run -d -p 80:81 -v "$(shell pwd)":/etc/nginx mynginx
