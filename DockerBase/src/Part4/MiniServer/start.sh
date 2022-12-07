#!/bin/bash

gcc main.c -lfcgi -o server.out
spawn-fcgi -p 8080 ./server.out
nginx -g 'daemon off;'
service nginx start

/bin/bash