# Patch cert-manager

We need to patch cert-manager so that our image policy doesn't
prevent the HTTP solver from running when creating certificates.

## Run Patch Script

The patch uses `kubectl patch` to patch cert-manager so that it uses
our replicated version of the solver.

```
patch-cert-manager.sh
```

## Next Step

[Setup Music Store team](05-setup-team.md)
