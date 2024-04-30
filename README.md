## how to
### running
```
kcl run
```

### testing
```
kcl test ./...
```

### oci
#### login
```
kcl registry login ghcr.io -u <user>
```
> https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry
> password = token

#### push
```
kcl mod push oci://ghcr.io/<username>/<module_name>
```
> i.e. `kcl mod push oci://ghcr.io/cloudprizm/service`
