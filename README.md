### Troubleshooting

Files and folders copied to image are all granted with 777 permissions when using docker buildx with default context (the Git context).

https://github.com/docker/build-push-action/issues/570

### Behaviour

#### Steps to reproduce this issue

```Dockerfile
FROM scratch
COPY bin/ /usr/bin/
```

#### Expected behavior

The `/usr/` and `/usr/bin/` folders should not have chmod 777.

#### Actual behavior

The `/usr/` and `/usr/bin/` folders are granted chmod 777.

