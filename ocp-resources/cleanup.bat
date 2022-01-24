rem oc delete dc confluence
rem oc delete dc mysql
rem oc delete service confluence
rem oc delete service mysql
rem oc delete route confluence
rem oc delete persistentvolumeclaim confluence
rem oc delete persistentvolumeclaim log
rem oc delete persistentvolumeclaim mysql-data
rem oc delete sa jira

oc delete configmap jira-jvm-config
oc delete dc jira
oc delete service jira
oc delete route jira
oc delete dc postgresql
oc delete service postgresql
oc delete secret postgresql
rem oc delete persistentvolumeclaim mysql-data
