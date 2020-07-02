# Docker-Part_IV
similar to part III but this time the Webserver also perform a GET to a SQL Database.

## Getting Started

I ran this code in a Mac-OS. with docker installed. 

### Prerequisites

Docker 

## Running the tests

Initial docker containers repository for test. just run 

```
sudo bash start.sh
```
under /db_app directory

```
docker build -t sql_db .
docker run --rm -P --name db_app --net=backend_net sql_db
```
login to bash in webserver
```
docker exec -it webserver.docker /bin/bash
```
connect to the DB 

```
psql -U admin -W -h db_app test
```
create database sample 

```
CREATE TABLE link (
test(>  ID serial PRIMARY KEY,
test(>  url VARCHAR (255) NOT NULL,
test(>  name VARCHAR (255) NOT NULL,
test(>  description VARCHAR (255),
test(>  rel VARCHAR (50)
test(> );

INSERT INTO link (url, name) VALUES ('www.admin@test.com','ITS WORKS');
```


### verifying container is running

Open the browser url= localhost:56733

![Imagen of localhost:56733](/imagen/Capt3.png)

```
docker ps 
```


### additional commands

login to Bash 
```
docker exec -it docker.test /bin/bash 
```