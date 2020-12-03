#!/usr/bin/env bash

set -euo pipefail

python /opt/src/namenode_exporter.py --cluster ${HADOOP_CLUSTER_NAME} -url ${HADOOP_JMX_URL}
