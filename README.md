docker build -t hook:v1 .


docker run hook:v1


docker inspect xxxx --format '{{.Config.Entrypoint}}'



/bin/sh /bin/bash 是否启动子进程跟操作系统有关