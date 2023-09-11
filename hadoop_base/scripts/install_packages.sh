set -e
set -x

apt-get clean
apt-get update

apt-get install -y \
    ${JAVA_PKG} \
    net-tools \
    curl \
    netcat \
    gnupg \
    libsnappy-dev

rm -rf /var/lib/apt/lists/*

mkdir -p ${HADOOP_LOG_DIR}
mkdir -p ${HADOOP_DATA_DIR}

set +x
