Simple api integration framework running in docker

Dependencies:
```
docker
robotframework (installed in container)
requests (installed in container)
```

How to run:

build image

```
docker run -it --rm -v "$PWD":/usr/src/tests --name test {YOUR_CONTAINER_ALIAS}

```

run container
```
docker build -t {YOUR_CONTAINER_ALIAS} .
```
