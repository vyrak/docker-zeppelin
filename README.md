Zeppelin 0.8.0 with Spark 2.3.1 support

## Quick Start
```
docker run -d -p 8080:8080 vbunleang/zeppelin
```
or with persistent volumes
```
docker run -d -p 8080:8080 -v "$(pwd)/notebook:/var/notebook" -v "$(pwd)/data:/var/data" vbunleang/zeppelin
```

## Dockerfile

### ENV Variables
```
SPARK_HOME            = /opt/spark/spark-2.3.1-bin-hadoop2.7
ZEPPELIN_NOTEBOOK_DIR = /notebook
ZEPPELIN_LOG_DIR      = /logs
```

### Volumes
```
/logs
/notebook
/var/data
```

### Ports
```
8080
```
