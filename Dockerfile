FROM majiajue/jdk1.8
COPY RuntimeShutdownHook.jar .


#以下ENTRYPOINT ： docker run 启动一个进程
#以下ENTRYPOINT ：  k8s     启动一个进程
#root         1     0  1 17:34 ?        00:00:00 java -DPERFMA_CLUSTER_NAME=trace-order-service -DPERFMA_AGENT_ID=trace-order-service-8f3ab9bf1c4c -jar RuntimeShutdownHook.jar
ENTRYPOINT ["/bin/sh","-c","exec java -DPERFMA_CLUSTER_NAME=trace-order-service -DPERFMA_AGENT_ID=trace-order-service-$HOSTNAME -jar RuntimeShutdownHook.jar"]

#--------------------------------------------------------------------------------------------------------------

#以下ENTRYPOINT ： docker run  启动两个进程
#root         1     0  0 17:35 ?        00:00:00 /bin/sh -c java -DPERFMA_CLUSTER_NAME=trace-order-service -DPERFMA_AGENT_ID=trace-order-service-$HOSTNAME -jar RuntimeShutdownHook.jar
#root         6     1  1 17:35 ?        00:00:00 java -DPERFMA_CLUSTER_NAME=trace-order-service -DPERFMA_AGENT_ID=trace-order-service-ff794d889adc -jar RuntimeShutdownHook.jar

#以下ENTRYPOINT ：  k8s     启动一个进程
#root         1     0  1 17:34 ?        00:00:00 java -DPERFMA_CLUSTER_NAME=trace-order-service -DPERFMA_AGENT_ID=trace-order-service-8f3ab9bf1c4c -jar RuntimeShutdownHook.jar

ENTRYPOINT ["/bin/sh","-c","java -DPERFMA_CLUSTER_NAME=trace-order-service -DPERFMA_AGENT_ID=trace-order-service-$HOSTNAME -jar RuntimeShutdownHook.jar"]
