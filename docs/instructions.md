# Setup Instructions

This lab builds on others that come before it, and so these instructions will
refer to documentation from those other repositories to get you up and running.

The repos we'll refer to are

* [TKG Lab](https://github.com/Tanzu-Solutions-Engineering/tkg-lab),
* [TKG Lab End-to-End Adaptation](https://github.com/doddatpivotal/tkg-lab-e2e-adaptation), and
* [Tanzu Governance Lab](https://github.com/tanzu-end-to-end/governance-lab).

Be careful of the "next step" links in the other labs, because they'll take you 
further into that Lab rather than into the next step for this one.

## Installing

0. [Setup the Foundational Lab and Bonus Labs](https://github.com/doddatpivotal/tkg-lab-e2e-adaptation/blob/main/docs/00-tkg-lab-foundation.md), 
   follow the steps as documented in [@doddatpivotal's repository](https://github.com/doddatpivotal/tkg-lab-e2e-adaptation)
   and its references to the [original lab](https://github.com/Tanzu-Solutions-Engineering/tkg-lab).
1. [Configure parameters for this lab](01-lab-parameter-setup.md) another step
   where I leaned heavily on [@doddatpivotal](https://github.com/doddatpivotal) and also on
   the updates I made in [Tanzu Governance Lab](https://github.com/tanzu-end-to-end/governance-lab) 
   since this parameter file is adapted from his.
2. [Configure Governance Lab Components](02-configure-governance-lab.md) to prepare several
   of the trust and control points that are also used in this lab.
3. [Further configure Harbor](03-additional-harbor-config.md) with projects, registries,
   and replications required for this lab.
4. [Patch cert-manager](04-patch-cert-manager.md) so that it uses a solver pulled 
   from the private registry and avoids policy violations.
5. [Setup the environment for the Steeltoe development team](05-setup-team.md). 
   Creates dependencies for the development team in Okta, Concourse, TMC, and both 
   the workload and shared services clusters.
6. [Prepare Spring Cloud infrastructure](06-prepare-spring-cloud-infra.md) to add
   Spring Cloud server components that the Steeltoe Music Store depends on.
7. [Setup Concourse secrets](07-set-pipeline-secrets.md). The script 
   both sets the secrets in Kubernetes and set the pipeline in Concourse so they'll
   each be up-to-date and in sync.
8. [Setup Concourse pipeline](08-set-pipeline.md). The script 
   both sets the secrets in Kubernetes and set the pipeline in Concourse so they'll
   each be up-to-date and in sync.
