rem oc delete dc confluence
rem oc delete dc mysql
rem oc delete service confluence
rem oc delete service mysql
rem oc delete route confluence
rem oc delete persistentvolumeclaim confluence
rem oc delete persistentvolumeclaim log
rem oc delete persistentvolumeclaim mysql-data
rem oc delete sa jira

rem oc delete configmap jira-jvm-config
rem oc delete dc jira
rem oc delete service jira
rem oc delete route jira
rem oc delete dc postgresql
rem oc delete service postgresql
rem oc delete secret postgresql
rem oc delete persistentvolumeclaim mysql-data


oc delete deploymentconfig sb-camel-rest-postgresql
oc delete buildconfig sb-camel-rest-postgresql
oc delete imagestream sb-camel-rest-postgresql
oc delete service sb-camel-rest-postgresql
oc delete route sb-camel-rest-postgresql
