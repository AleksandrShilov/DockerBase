start:
	sudo docker pull nginx:stable
	sudo docker run --name dockernginx -dt -p 81:81 nginx
	sudo docker exec -it dockernginx bash -c 'apt update ; apt install -y gcc libfcgi-dev spawn-fcgi make ; mkdir /dockernginx'
	sudo docker cp ./main.c dockernginx:/dockernginx/
	sudo docker cp ./Makefile dockernginx:/dockernginx/
	sudo docker cp ./nginx.conf dockernginx:/etc/nginx/nginx.conf
	sudo docker exec -it dockernginx bash -c 'make dockernginx -C /dockernginx/'
	sudo docker exec -it dockernginx bash -c ' spawn-fcgi -p 8080 dockernginx/server.out'
	sudo docker exec -it dockernginx bash -c 'nginx -s reload'


dockernginx:
	gcc main.c -lfcgi -o server.out
