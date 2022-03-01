##subscription manager requirement

To build the docker image, we need subscription keys from a RHEL instance on below directories

/etc/pki/entitlement

/etc/rhsm


##outside container

podman build -t ahermanto/openscap .

podman login -u kubeadmin -p $(oc whoami -t) default-route-openshift-image-registry.apps-crc.testing --tls-verify=false

podman tag ahermanto/openscap:latest default-route-openshift-image-registry.apps-crc.testing/release-management-dev/openscap:latest

podman push default-route-openshift-image-registry.apps-crc.testing/release-management-dev/openscap:latest --tls-verify=false

##inside container

podman --storage-driver=vfs images

oscap-podman 5dedc5acc218 oval eval --report report.html rhel-8.oval.xml