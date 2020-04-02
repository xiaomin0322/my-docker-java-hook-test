docker build -t hook:v1 .


docker run hook:v1


docker inspect xxxx --format '{{.Config.Entrypoint}}'

