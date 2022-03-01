FROM centos/centos
ENV STORAGE_DRIVER=vfs
USER root
RUN adduser -g 0 -u 1001 jenkins
RUN chown -R jenkins:0 /home/jenkins
RUN rm /etc/yum.repos.d/*
RUN rm /etc/pki/rpm-gpg/*
COPY repo/* /etc/yum.repos.d
COPY gpg/* /etc/pki/rpm-gpg
RUN dnf -y distro-sync --allowerasing
RUN dnf -y install podman wget openscap openscap-utils
RUN wget -O - https://www.redhat.com/security/data/oval/v2/RHEL8/rhel-8.oval.xml.bz2 | bzip2 --decompress > rhel-8.oval.xml
ENV HOME=/home/jenkins
USER 1001