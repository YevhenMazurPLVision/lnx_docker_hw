# lnx_docker_hw

Build two Alpine-based Docker images: one for the server and one for the client.

```bash
docker build -t alpine-server:latest .
docker build -t alpine-client:latest .
```

After successful build, verify that images were created:

```bash
docker image ls
```
