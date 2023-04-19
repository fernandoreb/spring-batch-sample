# spring-batch-sample
Este .


mvn package

podman build . -t quay.io/rh_ee_fguimara/portal-spring-batch-sample:1.0.0

mvn spring-boot:run



oc new-project batch
oc new-build --binary --strategy=docker --name spring-batch
oc start-build spring-batch --from-dir . -F

