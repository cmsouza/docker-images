FROM centos

RUN yum update -y
RUN yum install -y net-tools iproute java-1.8.0-openjdk
RUN yum install -y vim bind-utils
RUN rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
ADD ./repos/*.repo /etc/yum.repos.d/
ADD ./scripts/elasticsearch.sh /usr/local/sbin/

RUN yum update -y
RUN yum install elasticsearch -y
ADD ./config/elasticsearch.yml /etc/elasticsearch/

RUN mkdir -pv /var/run/elasticsearch/ /var/log/elasticsearch /var/lib/elasticsearch /etc/elasticsearch /home/elasticsearch
RUN chown elasticsearch: /var/run/elasticsearch/ /var/log/elasticsearch /var/lib/elasticsearch /etc/elasticsearch /home/elasticsearch

USER elasticsearch
CMD ["/bin/bash", "/usr/local/sbin/elasticsearch.sh"]

EXPOSE 9200 9300
