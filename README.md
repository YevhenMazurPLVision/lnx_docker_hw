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

Create a custom (non-default) Docker bridge network:

```bash
sudo docker network create my_bridge
```

Verify that the network was created successfully:

```bash
sudo docker network ls
```

Run containers in two separate terminals:

```bash
sudo docker run  --name server --network my_bridge -v "$(pwd)":/scripts alpine-server:latest ./server.sh
sudo docker run  --name client --network my_bridge -v "$(pwd)":/scripts alpine-client:latest ./client.sh
```

Verify that containers are running:

```bash
sudo docker ps -a
```

Stop container:

```bash
sudo docker stop <CONTAINER ID/NAME>
```

Remove containers after stoping them:

```bash
sudo docker rm <CONTAINER ID/NAME>
```
or force:
```bash
sudo docker rm -f <CONTAINER ID/NAME>
```

Open terminal for container

```bash
sudo docker exec -it <CONTAINER ID/NAME> sh
```

Commands to verify containers connectivity between container
Open new terminal and test ping or inspect network

```bash
sudo docker exec client ping server
```

```bash
sudo docker network inspect my_bridge
```
