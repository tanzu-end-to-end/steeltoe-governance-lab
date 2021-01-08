# Setup Concourse CI/CD

Now that all of the dependencies are in place, we're ready to set 
Concourse up for CI/CD of the Steeltoe Music Store. This step will help
you load the pipeline into Concourse, and unpause the pipeline. It 
should begin to run soon thereafter.

## Run the Setup Script

Sets up the pipeline in Concourse in the team that the add team script created.

```
set-pipeline.sh
```

Your demo is effectively running now, since the pipeline should 
trigger from the latest commit to your Steeltoe Music Store repository.
