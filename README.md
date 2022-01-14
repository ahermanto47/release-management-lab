# release-management-lab

argocd app create release-management-dev --repo https://github.com/ahermanto47/release-management-lab.git --path environments --dest-server https://api.crc.testing:6443 --dest-namespace default