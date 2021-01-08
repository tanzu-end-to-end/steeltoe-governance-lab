# Prepare Spring Cloud Infrastucture

Part of the goal for this lab is to show how Steeltoe provides the
same experience as Spring Cloud for .NET developers. We need to 
add some Spring Cloud infrastructure to our workload cluster in
order to do that.

We are going to install the [Spring Cloud Config Server](https://steeltoe.io/app-configuration),
[Hystrix](https://steeltoe.io/circuit-breakers), and [Eureka](https://steeltoe.io/service-discovery)
as part of the lab. Strictly speaking we could accomplish all 
of these use cases in other ways with Kubernetes, but there
are some limitations (especially with configuration) that 
we wanted to avoid in preparing the lab.

## Run the Setup Script

Deploy all of the infrastructure, including relevant Ingress
controllers with the `configure-infra.sh` script. This will deploy
each component using the images you've replicated to your
private registry so that your image policy does not prevent
them from running.

```
configure-infra.sh
```
## Next Step

[Add Concourse secrets to Kubernetes](06-set-pipeline-secrets.md)
