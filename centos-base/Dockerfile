############################################################
# Dockerfile to build Centos container base image
# Based on Centos 7
############################################################

FROM centos:7.2.1511

MAINTAINER Yangseock Lee <ysl8607@naver.com>

# Update RPM Packages
RUN yum -y install deltarpm && yum -y update && yum clean all

# Install base tools
RUN yum install -y zsh git vim && yum clean all

CMD /bin/zsh
