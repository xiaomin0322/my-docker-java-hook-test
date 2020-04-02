FROM majiajue/jdk1.8
COPY RuntimeShutdownHook.jar .
ENTRYPOINT ["/bin/sh","-c","exec java -DPERFMA_CLUSTER_NAME=trace-order-service -DPERFMA_AGENT_ID=trace-order-service-$HOSTNAME -jar RuntimeShutdownHook.jar"]
