FROM mariadb:latest
COPY ./sql-script.sql /docker-entrypoint-initdb.d/ddl.sql

ENV MARIADB_ROOT_PASSWORD rmit_password
ENV MARIADB_DATABASE rmit_store_db
ENV MARIADB_USER db_admin
ENV MARIADB_PASSWORD rmit_password
