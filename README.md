# release-management-lab
argocd login --sso argocd-server-argocd.apps-crc.testing

argocd app create release-management-dev --repo https://github.com/ahermanto47/release-management-lab.git --path environments --dest-server https://api.crc.testing:6443 --dest-namespace release-management-dev --sync-policy automated
