docker pull wish2rich/spring-cicd:${hash}
docker stop server
docker tag wish2rich/spring-cicd:${hash} spring-cicd
docker run --rm -d -p 80:8080 --name server spring-cicd
