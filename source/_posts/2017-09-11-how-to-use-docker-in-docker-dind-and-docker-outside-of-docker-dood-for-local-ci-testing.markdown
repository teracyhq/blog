---
layout: post
title: "How to use Docker in Docker (DinD) and Docker outside of Docker (DooD) for local CI testing"
author: hoatle
date: 2017-09-11 08:10
comments: true
categories:
    - "en"
    - "how-to"
tags:
    - "DinD"
    - "DooD"
    - "Docker"
    - "CI/CD"
    - "DevOps"
    - "teracy-dev"
cover: /images/2017/09/11/spintop-dind.jpg
description: How to use Docker in Docker (DinD) and Docker outside of Docker (DooD) for local CI test
keywords: Docker in Docker, Docker outside of docker, Local CI, DevOps
published: true
---

{% img center /images/2017/09/11/spintop-dind.jpg Docker in Docker %}
Credit: https://github.com/jpetazzo/dind

Although running Docker inside Docker (DinD) or Docker outside of Docker (DooD) is generally not
recommended, there are some legitimate use cases, such as development of Docker itself or for local
CI testing. And in this blog post, I'm going to show you how to use DinD or DooD for local CI testing
as it's a very typical use case for local DevOps.

<!-- more -->

## The differences between DinD and DooD?

DooD is the opposite of DinD.

DinD includes a whole Docker installation inside of it.

DooD uses its underlying host's Docker installation by bind-mounting the Docker socket.

Obviously, DooD should be faster because we can leverage its caching mechanism, and DinD should be
cleaner. DinD should support parallel running but DooD does not, or at least, not very reliable
with my observation. If you want to conduct the clean testing, use DinD. If you want to conduct the
faster testing, use DooD.

Dood is simpler to use than DinD.

And if you want to test with different versions of `docker`, `docker-compose`, use DinD and DooD.


## Local CI testing with DinD

You can use https://hub.docker.com/r/library/docker/ for local testing, however, it's `alpine` image
which is not very suitable for our general usage at Teracy. We prefer Ubuntu since it is the
default travis-ci environment. By using Ubuntu Docker image for running CI scripts on all the CI systems
(gitlab, drone, etc.), we can easily port the CI scripts between these CI systems.

That is the reason why we build `teracy/ubuntu` Docker images to be used with DinD, you can check out
the project here: https://github.com/teracyhq/docker-files/tree/master/ubuntu and the built Docker
images here: https://hub.docker.com/r/teracy/ubuntu/tags/

We also have `docker-compose` installed to the `teracy/ubuntu` Docker images for faster testing
with it.

Let's see how it works:

<script type="text/javascript" src="https://asciinema.org/a/137135.js" id="asciicast-137135" async></script>


The commands from the above video:

```bash
$ docker run --privileged --name df-docker -d docker:17.06.0-dind # start DinD container

$ docker run --rm -it --link df-docker:docker docker:17.06.0 sh # run docker image (Alpine)

# docker version

# docker-compose --version # no docker-compose

$ docker run --rm -it ubuntu bash # run Ubuntu image within the Docker Alpine container

# uname -a
# exit
# uname -a
# exit


$ docker run --rm -it --link df-docker:docker teracy/ubuntu:16.04-dind-17.06.0-ce bash # run Ubuntu image

# docker version
# docker-compose version

$ docker run --rm -it alpine sh # run Alpine image with the Docker Ubuntu container

# uname -a
# exit
# uname -a
# exit

```


## Local CI testing with DooD

Let's see how it works:

<script type="text/javascript" src="https://asciinema.org/a/137139.js" id="asciicast-137139" async></script>

The commands from the above video:

```
$ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock docker sh # start DooD container

# docker version
# docker-compose --version # no docker-compose

$ docker run --rm -it ubuntu bash # run Ubuntu image within the Docker Alpine container
# cat /etc/lsb-release
# exit
# cat /etc/alpine-release
# exit

$ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock teracy/ubuntu:16.04-dind-17.06.0-ce bash # start DooD container

# docker version
# docker-compose version

# docker run --rm -it alpine sh # run Alpine image with the Docker Ubuntu container
# cat /etc/alpine-release
# exit
# cat /etc/lsb-release 
# exit
```


## Volume mounting

Volume mounting is a bit tricky, you must understand the underlying mechanism of its to get it work.
Basically, you need to make sure the mounting path from the running containers must be the same as the
DinD containers or DooD containers.

Let's see how volume mounting works with DinD:

<script type="text/javascript" src="https://asciinema.org/a/137150.js" id="asciicast-137150" async></script>

The commands from the above video:

```bash
# volume mount with DinD

$ pwd
$ ls
$ docker run --privileged --name df-docker -d -v $(pwd):$(pwd) -w $(pwd) docker:17.06.0-dind # start DinD container
$ docker run --rm -it --link df-docker:docker -v $(pwd):$(pwd) -w $(pwd) teracy/ubuntu:16.04-dind-17.06.0-ce bash
# ls
# docker run --rm -it -v $(pwd):/opt/app -w /opt/app ubuntu bash
# ls
```

Let's see how volume mounting works with DooD:

<script type="text/javascript" src="https://asciinema.org/a/137152.js" id="asciicast-137152" async></script>

The commands from the above video:

```bash
# volume mount with DooD
$ pwd
$ ls
$ docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/$(pwd) -w $(pwd) teracy/ubuntu:16.04-dind-17.06.0-ce bash # start DooD container
# ls
# docker run --rm -it -v $(pwd):/opt/app -w /opt/app ubuntu bash
# ls
```

## Too many virtualization layers?

At Teracy, the `teracy-dev` VM is virtualized on a host machine (and the host machine could be virtualized
from another virtualized machine and so on).

Within the `teracy-dev` VM, we use DinD. And within a Docker container, we can use Docker to run other
Docker containers and so on.

Yeah, welcome to the world of "Inception", let's figure out where you are now :-)?

Happy hacking!


## References

- http://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/
- https://hub.docker.com/r/library/docker/
- https://github.com/axltxl/docker-jenkins-dood
- https://sreeninet.wordpress.com/2016/12/23/docker-in-docker-and-play-with-docker/
