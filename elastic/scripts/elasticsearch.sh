#!/bin/bash
source /etc/sysconfig/elasticsearch

ES=/usr/share/elasticsearch/bin/elasticsearch
PIDFILE=/var/run/elasticsearch/elasticsearch.pid
LOGPATH=/var/log/elasticsearch
DATAPATH=/var/lib/elasticsearch
CONFPATH=/etc/elasticsearch

$ES -p $PIDFILE -Edefault.path.logs=$LOGPATH -Edefault.path.data=$DATAPATH -Edefault.path.conf=$CONFPATH
