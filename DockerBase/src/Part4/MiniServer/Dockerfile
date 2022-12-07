FROM nginx:1.22.1


COPY nginx.conf /etc/nginx/nginx.conf 
COPY main.c .
COPY start.sh .

RUN apt-get update  \
  && apt-get install -y gcc  \
  && apt-get install -y spawn-fcgi \
  && apt-get install -y libfcgi-dev; \
  chmod u+x start.sh

# WORKDIR /mini_web_server/

CMD ./start.sh