FROM core/centos:7.3

MAINTAINER Pascal Qu <jjqquu@xiaomi.com>

RUN yum install -y epel-release && \
  yum install -y docker automake make python-setuptools python-pip git && \
  yum clean all -y && \
  (curl -L https://github.com/openshift/source-to-image/releases/download/v1.1.5/source-to-image-v1.1.5-4dd7721-linux-386.tar.gz | \
       tar -xz -C /usr/local/bin ) 

# Directory with the sources is set as the working directory so all STI scripts
# can execute relative to this path.
WORKDIR /opt/work

CMD ["/bin/bash"]
