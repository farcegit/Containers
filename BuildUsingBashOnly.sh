docker pull franarcecr/carwash
docker build -t franarcecr/carwashweb .
docker run -d -p 8080:80  --name carwashweb franarcecr/carwashweb
docker pull mysql
docker run --name carwashdb -p 3306:3306 -e MYSQL_ROOT_PASSWORD='devopsiscool' -d mysql:latest;
docker network create CarWashNetwork1
docker network connect CarWashNetwork1 carwashdb
docker network connect CarWashNetwork1 carwashweb