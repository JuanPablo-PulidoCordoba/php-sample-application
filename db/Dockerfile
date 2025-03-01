FROM mariadb:latest

COPY ../sql/db.sql /docker-entrypoint-initdb.d/

ENV MYSQL_DATABASE=sample
ENV MYSQL_USER=sampleuser
ENV MYSQL_PASSWORD=samplepass
ENV MYSQL_ROOT_PASSWORD=rootpassword
