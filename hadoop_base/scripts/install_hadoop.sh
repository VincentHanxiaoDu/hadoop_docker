set -e
set -x

curl -O https://dist.apache.org/repos/dist/release/hadoop/common/KEYS
gpg --import KEYS
curl -fSL ${HADOOP_DOWNLOAD_URL} -o ${HADOOP_TAR_FILE}
curl -fSL ${HADOOP_DOWNLOAD_URL}.asc -o ${HADOOP_TAR_FILE}.asc
gpg --verify ${HADOOP_TAR_FILE}.asc
tar -xf ${HADOOP_TAR_FILE} -C /tmp/
mv /tmp/hadoop-${HADOOP_VERSION}/* ${HADOOP_HOME}
rm ${HADOOP_TAR_FILE}*

set +x