FROM registry.redhat.io/openshift4/ose-jenkins-agent-base

ENV _BUILDAH_STARTED_IN_USERNS="" \
    BUILDAH_ISOLATION=chroot \
    STORAGE_DRIVER=vfs \
    JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.14.0.9-2.el8_5.x86_64

USER root

# Copy entitlements
COPY ./pki/entitlement /etc/pki/entitlement
# Copy subscription manager configurations
COPY ./rhsm/rhsm.conf /etc/rhsm
COPY ./rhsm/ca /etc/rhsm/ca
# Delete /etc/rhsm-host to use entitlements from the build container
RUN rm /etc/rhsm-host

RUN adduser -g 0 -u 1001 jenkins && \
    yum -y update && \
    yum install -y --setopt=tsflags=nodocs podman skopeo buildah openscap openscap-utils java-11-openjdk maven --exclude container-selinux && \
    yum clean all && \
    chown -R jenkins:0 /home/jenkins && \
    chmod -R 775 /home/jenkins && \
    chmod -R 775 /etc/alternatives && \
    chmod -R 775 /var/lib/alternatives && \
    chmod -R 775 /usr/lib/jvm && \
    chmod -R 775 /usr/bin && \
    chmod 775 /usr/share/man/man1 && \
    mkdir -p /var/lib/origin && \
    chmod 775 /var/lib/origin && \
    chmod u-s /usr/bin/newuidmap && \
    chmod u-s /usr/bin/newgidmap && \
    rm -f /var/logs/*
    
RUN wget -O - https://www.redhat.com/security/data/oval/v2/RHEL8/rhel-8.oval.xml.bz2 | bzip2 --decompress > /home/jenkins/rhel-8.oval.xml

RUN rm -rf /etc/pki/entitlement && \
    rm -rf /etc/rhsm
    
USER 1001