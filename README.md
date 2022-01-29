# release-management-lab
argocd login --sso argocd-server-argocd.apps-crc.testing

argocd app create release-management-dev --repo https://github.com/ahermanto47/release-management-lab.git --path environments --dest-server https://api.crc.testing:6443 --dest-namespace release-management-dev --sync-policy automated

# service account for confluence server

oc create serviceaccount confluence

oc adm policy add-scc-to-user anyuid -z confluence

# manual plugin installations in jenkins

Cucumber Report

Warnings Next Generation

Jacoco
