# RMIT University Vietnam
# Course: COSC2767 Systems Deployment and Operations
# Semester: 2022B
# Assessment: Assignment 3
# Author: Nguyen Quoc Huy
# ID: s3818764
# Created  date: 18/09/2022 
# Last modified: 18/09/2022
# Acknowledgement: Google

FROM mariadb:latest
COPY ./sql-script.sql /docker-entrypoint-initdb.d/ddl.sql

ENV MARIADB_ROOT_PASSWORD rmit_password
ENV MARIADB_DATABASE rmit_store_db
ENV MARIADB_USER db_admin
ENV MARIADB_PASSWORD rmit_password
