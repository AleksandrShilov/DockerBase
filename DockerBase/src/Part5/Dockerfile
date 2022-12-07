FROM nginx:1.22.1

WORKDIR /server

COPY nginx.conf /etc/nginx/nginx.conf 
COPY main.c .
COPY start.sh .

RUN apt-get update  \
  && apt-get install -y gcc  \
  && apt-get install -y spawn-fcgi \
  && apt-get install -y libfcgi-dev; \
  chmod +x start.sh; \
  rm -rf /var/lib/apt/lists

RUN chmod u-s ../usr/bin/passwd; \
  chmod u-s  ../usr/bin/newgrp; \
  chmod u-s ../bin/umount; \
  chmod u-s ../bin/su; \
  chmod u-s ../bin/mount; \
  chmod g-s ../sbin/unix_chkpwd; \
  chmod g-s ../usr/bin/chage; \
  chmod u-s ../usr/bin/chfn; \
  chmod g-s ../usr/bin/expiry; \
  chmod g-s ../usr/bin/wall; \
  chmod u-s ../usr/bin/gpasswd; \
  chmod u-s ../usr/bin/chsh; \
  touch /var/run/nginx.pid; \
  chown -R nginx:nginx /var/cache/nginx /var/run/nginx.pid ; \
  chown -R nginx:nginx /server && chmod -R 755 /server


USER nginx

CMD ./start.sh

HEALTHCHECK --timeout=30s --retries=3 CMD curl -f localhost:81/