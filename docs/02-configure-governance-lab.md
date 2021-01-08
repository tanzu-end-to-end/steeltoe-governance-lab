# Configure Governance Lab Components

This lab uses the same components as the [Tanzu Governance Lab](https://github.com/tanzu-end-to-end/governance-lab)
to assure compliance for a .NET workload (vs. the Java workload in the
other codesbase). We can leverage most of the setup steps from that 
environment to prepare this one.

## Preparing the Governance Components

Note that the "Next Step" links in the various documents below may not be
the right next step for this process. Use the back button to return here and
follow the next link in the list.

0. Clone the [Tanzu Governance Lab](https://github.com/tanzu-end-to-end/governance-lab) 
repository:
   ```
   git clone https://github.com/tanzu-end-to-end/governance-lab
   ```

1. Change to the directory you cloned the governance 

2. Make sure the environment variable `PARAMS_YAML` is set to point to your 
   configuration for this lab. It's important that you do this after changing 
   into the directory to avoid Direnv clobbering the value.

3. [Prepare your Harbor registry](https://github.com/tanzu-end-to-end/governance-lab/blob/main/docs/02-prepare-registry.md) with the required 
   Okta users, projects, and replications.

4. [Install TBS and it's dependencies](https://github.com/tanzu-end-to-end/governance-lab/blob/main/docs/03-install-tbs.md) onto the shared 
   services cluster. This step also creates a stack and builder using older 
   dependencies so we can demonstrate how new TBS dependencies can resolve CVEs without 
   developers rebuilding.

5. [Prepare TMC policy](https://github.com/tanzu-end-to-end/governance-lab/blob/main/docs/05-prepare-tmc-policy.md) to allow access to the cluster, 
   enforce deployment minimums, and one allow workloads from the private registry.

6. [Deploy Sonarqube](https://github.com/tanzu-end-to-end/governance-lab/blob/main/docs/06-deploy-sonarqube.md) to the shared service cluster. 
   Sonarqube is used in the pipeline to run as static code scan before building an 
   image from the application.

7. [Push the policy bundle](https://github.com/tanzu-end-to-end/governance-lab/blob/main/docs/07-push-policy-bundle.md) to to registry. The bundle
   contains a set of simple resiliency policies that the pipeline will use to
   validate Kubernetes artifacts.

## Next Step

[Update Harbor configuration](03-additional-harbor-config.md)
