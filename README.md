# spring-batch-sample
Este .


oc new-project batch
oc new-build --binary --strategy=docker --name spring-batch
oc start-build spring-batch --from-dir . -F


oc apply -f openshift/cron-job.yaml 

oc apply -f openshift/job.yaml 

