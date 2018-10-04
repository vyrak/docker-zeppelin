FROM apache/zeppelin:0.8.0

RUN mkdir /opt/spark && \
  cd /opt/spark && \
  curl -o spark-2.3.1-bin-hadoop2.7.tgz http://apache.claz.org/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz && \
  tar xzf spark-2.3.1-bin-hadoop2.7.tgz

ENV SPARK_HOME='/opt/spark/spark-2.3.1-bin-hadoop2.7'
ENV ZEPPELIN_NOTEBOOK_DIR='/notebook'
ENV ZEPPELIN_LOG_DIR='/logs'

VOLUME /logs
VOLUME /notebook

EXPOSE 8080
