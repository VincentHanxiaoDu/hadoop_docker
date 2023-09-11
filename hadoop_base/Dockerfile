FROM ubuntu:latest

ENV USER=root
ENV SCRIPTS_DIR=/scripts
ENV PKG_MANAGER=apt-get
ENV JAVA_PKG=openjdk-8-jdk
ENV HADOOP_VERSION=3.3.6
ENV HADOOP_DOWNLOAD_URL=https://dlcdn.apache.org/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz
ENV HADOOP_TAR_FILE=/tmp/hadoop.tar.gz
ENV HADOOP_HOME=/hadoop
ENV HADOOP_LOG_DIR=${HADOOP_HOME}/logs
ENV HADOOP_DATA_DIR=${HADOOP_HOME}/data

COPY scripts ${SCRIPTS_DIR}
RUN chmod u+x ${SCRIPTS_DIR}/*.sh

RUN ${SCRIPTS_DIR}/install_packages.sh
RUN ${SCRIPTS_DIR}/install_hadoop.sh

ENTRYPOINT [ "bash" ]
