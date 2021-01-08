# Setup Concourse Secrets

The [Concourse](https://concourse-ci.org) server that we're using for the
Lab is configured to read Kubernetes secrets to find parameter values. This
step populates the secrets the pipeline required.

## Run the Setup Script

```
configure-secrets.sh
```

## Next Steps

[Set the Concourse pipeline](08-set-pipeline.md)
