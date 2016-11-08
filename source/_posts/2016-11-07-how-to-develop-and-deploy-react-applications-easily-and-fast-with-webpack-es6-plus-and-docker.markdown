---
layout: post
title: "How to develop and deploy React applications easily and fast with Webpack, ES6+ and Docker"
author: 
date: 2016-11-07 07:18
comments: true
categories:
    - "en"
    - "how-to"
tags:
    - "react"
    - "docker"
    - "webpack"
    - "es6"
    - "devops"
    - "react-boilerplate"
cover: /images/2016/11/07/react-development.gif
description: How to develop and deploy React applications easily and fast with Webpack, ES6+, and Docker
keywords: develop, deploy, React, applications, easily, fast, Webpack, ES6+, Docker, react-boilerplate
published: true
---

{% img center /images/2016/11/07/react-development.gif React Project Development %}

React is an awesome library to work with, however, we must pick up other libraries to build up a
robust application such as redux, redux-connect, server side rendering, redux-form, etc. After that,
we must organize the application structure with best practices to develop and deploy it. Doing all
these tasks requires some good experiences, so it's very difficult for a newbie. Good news is that there
are many starter boilerplate projects out there for us to choose. And today we'd like to introduce
you a starter React boilerplate for faster development and deployment.

<!-- more -->

There is a good starter React boilerplate with the following outstanding batteries included:

- Universal rendering (both client and server side rendering from the same client side code)
- Babel for ES6+ for writing modern JS syntax today
- Webpack for bundling, hot module reloading
- Redux, Redux Dev Tools, redux-form, React Router
- ESLint consistent style checking
- Unit testing
- bootstrap and font-awesome
- And many other cool things

However, the project is not active anymore, so we decided to fork and update it a bit to work with
Docker easier and faster. Let's get started with
https://github.com/hoatle/react-redux-universal-hot-example then.

## Prerequisites

{% img center /images/2016/11/07/react-prerequisites.gif React Project Prerequisites %}

Make sure you have the following softwares installed:

- git
- docker
- docker-compose

Make sure that docker and docker-compose are available by checking `git version`, `docker info` and
`docker-compose version` as following:


```bash
$ git version
git version 2.10.2
```

```bash
$ docker info
Containers: 9
Running: 1
Paused: 0
Stopped: 8
Images: 216
Server Version: 1.12.1
Storage Driver: aufs
Root Dir: /var/lib/docker/aufs
Backing Filesystem: extfs
Dirs: 244
Dirperm1 Supported: true
Logging Driver: json-file
Cgroup Driver: cgroupfs
Plugins:
Volume: local
Network: host bridge null overlay
Swarm: inactive
Runtimes: runc
Default Runtime: runc
Security Options: seccomp
Kernel Version: 4.4.20-moby
Operating System: Alpine Linux v3.4
OSType: linux
Architecture: x86_64
CPUs: 2
Total Memory: 1.953 GiB
Name: moby
ID: W2PL:SOAQ:Y24X:VTFK:2Z3X:3CON:HWRK:7EMB:E2D4:EAPJ:NSKY:YHJ2
Docker Root Dir: /var/lib/docker
Debug Mode (client): false
Debug Mode (server): true
File Descriptors: 20
Goroutines: 34
System Time: 2016-11-07T07:45:16.819335883Z
EventsListeners: 1
No Proxy: *.local, 169.254/16
Username: hoatle
Registry: https://index.docker.io/v1/
Insecure Registries:
127.0.0.0/8
```

```bash
$ docker-compose version
docker-compose version 1.8.0, build f3628c7
docker-py version: 1.9.0
CPython version: 2.7.9
OpenSSL version: OpenSSL 1.0.2h 3 May 2016
```

If you get the similar output, you're good to go to the next step.

## Git clone the project

{% img center /images/2016/11/07/react-clone.gif React Project Git Clone %}

We're developing a React application named: "my-app". Let's clone the starter project first:

```bash 
$ mkdir -p ~/teracy-dev/workspace
$ cd ~/teracy-dev/workspace
$ git clone https://github.com/hoatle/react-redux-universal-hot-example.git my-app
```

## Development

{% img center /images/2016/11/07/react-development.gif React Project Development %}

Docker is really awesome to create an isolated consistent development and deployment environment and
it's super fast, too. We're leveraging Docker and Docker workflow for all our projects at Teracy,
both internal and outsourcing projects.
After cloning the starter project, let's start developing with:

```bash
$ cd ~/teracy-dev/workspace/my-app
$ docker-compose pull && docker-compose up
```

If you get the following error output:

```bash
ERROR: for dev Cannot start service dev: driver failed programming external connectivity on endpoint myapp_dev_1 (e2105083bdacaf5bb0684aa7a34ae0dc92b20cc748a31491368c7afa3e51da30): Error starting userland proxy: Bind for 0.0.0.0:3000 failed: port is already allocated
ERROR: Encountered errors while bringing up the project.
```

then make sure the port 3000 is available for "my-app" to use.

If you get the following output:

```bash
$ docker-compose pull && docker-compose up
Pulling dev (hoatle/react-redux-universal-hot-example:dev_latest)...
dev_latest: Pulling from hoatle/react-redux-universal-hot-example
43c265008fae: Already exists
af36d2c7a148: Already exists
143e9d501644: Already exists
df720fc8e4f1: Already exists
eae19baa28ff: Already exists
9004de327d6a: Already exists
753292cc4b91: Already exists
21edf49ccd04: Pull complete
5571a198d5e5: Pull complete
12965aa2aa24: Pull complete
cd5c00a0e311: Pull complete
5b4a21012860: Pull complete
Digest: sha256:947e1889ff53d65cd2e9dd3357d45cf8714504995564e0a7183a5ff13a605ac0
Status: Downloaded newer image for hoatle/react-redux-universal-hot-example:dev_latest
Creating myapp_dev_1
Attaching to myapp_dev_1
dev_1 | yarn install v0.16.1
dev_1 | success Already up-to-date.
dev_1 | Done in 0.31s.
dev_1 | npm info it worked if it ends with ok
dev_1 | npm info using npm@3.10.8
dev_1 | npm info using node@v6.9.1
dev_1 | npm info lifecycle numerologist-app@0.1.0-SNAPSHOT~predev: numerologist-app@0.1.0-SNAPSHOT
dev_1 | npm info lifecycle numerologist-app@0.1.0-SNAPSHOT~dev: numerologist-app@0.1.0-SNAPSHOT
dev_1 | 
dev_1 | > numerologist-app@0.1.0-SNAPSHOT dev /opt/app
dev_1 | > concurrent --kill-others "npm run watch-client" "npm run start-dev" "npm run start-dev-api"
dev_1 | 
dev_1 | Warning: "concurrent" command is deprecated, use "concurrently" instead.
dev_1 | 
dev_1 | [1] npm
dev_1 | [1] info it worked if it ends with ok
dev_1 | [1] npm info using npm@3.10.8
dev_1 | [1] npm info using node@v6.9.1
dev_1 | [0] npm
dev_1 | [0] 
dev_1 | [0] info
dev_1 | [0] 
dev_1 | [0] it worked if it ends with
dev_1 | [0] ok
dev_1 | [0] npm
dev_1 | [0] 
dev_1 | [0] info
dev_1 | [0] 
dev_1 | [0] using
dev_1 | [0] npm@3.10.8
dev_1 | [0] npm
dev_1 | [0] 
dev_1 | [0] info
dev_1 | [0] 
dev_1 | [0] using node@v6.9.1
dev_1 | [2] npm
dev_1 | [2] 
dev_1 | [2] info
dev_1 | [2] 
dev_1 | [2] it worked if it ends with
dev_1 | [2] ok
dev_1 | [2] npm
dev_1 | [2] 
dev_1 | [2] info
dev_1 | [2] 
dev_1 | [2] using
dev_1 | [2] npm@3.10.8
dev_1 | [2] npm
dev_1 | [2] 
dev_1 | [2] info
dev_1 | [2] 
dev_1 | [2] using
dev_1 | [2] node@v6.9.1
dev_1 | [1] npm
dev_1 | [1] 
dev_1 | [1] info lifecycle numerologist-app@0.1.0-SNAPSHOT~prestart-dev: numerologist-app@0.1.0-SNAPSHOT
dev_1 | [1] npm
dev_1 | [1] 
dev_1 | [1] info
dev_1 | [1] 
dev_1 | [1] lifecycle
dev_1 | [1] numerologist-app@0.1.0-SNAPSHOT~start-dev: numerologist-app@0.1.0-SNAPSHOT
dev_1 | [1] 
dev_1 | [1] > numerologist-app@0.1.0-SNAPSHOT start-dev /opt/app
dev_1 | [1] > better-npm-run start-dev
dev_1 | [1] 
dev_1 | [1] running better-npm-run in /opt/app
dev_1 | [1] Executing script: start-dev
dev_1 | [1] 
dev_1 | [1] to be executed: node ./bin/server.js 
dev_1 | [0] npm
dev_1 | [0] 
dev_1 | [0] info
dev_1 | [0] 
dev_1 | [0] lifecycle
dev_1 | [0] numerologist-app@0.1.0-SNAPSHOT~prewatch-client: numerologist-app@0.1.0-SNAPSHOT
dev_1 | [0] npm
dev_1 | [0] 
dev_1 | [0] info
dev_1 | [0] 
dev_1 | [0] lifecycle
dev_1 | [0] numerologist-app@0.1.0-SNAPSHOT~watch-client: numerologist-app@0.1.0-SNAPSHOT
dev_1 | [0] 
dev_1 | [0] > numerologist-app@0.1.0-SNAPSHOT watch-client /opt/app
dev_1 | [0] > better-npm-run watch-client
dev_1 | [0] 
dev_1 | [2] npm
dev_1 | [2] 
dev_1 | [2] info
dev_1 | [2] lifecycle numerologist-app@0.1.0-SNAPSHOT~prestart-dev-api: numerologist-app@0.1.0-SNAPSHOT
dev_1 | [0] running better-npm-run in /opt/app
dev_1 | [2] npm
dev_1 | [2] 
dev_1 | [2] info
dev_1 | [2] lifecycle
dev_1 | [2] numerologist-app@0.1.0-SNAPSHOT~start-dev-api: numerologist-app@0.1.0-SNAPSHOT
dev_1 | [2] 
dev_1 | [2] > numerologist-app@0.1.0-SNAPSHOT start-dev-api /opt/app
dev_1 | [2] > better-npm-run start-dev-api
dev_1 | [2] 
dev_1 | [0] Executing script: watch-client
dev_1 | [0] 
dev_1 | [0] to be executed: node webpack/webpack-dev-server.js 
dev_1 | [2] running better-npm-run in /opt/app
dev_1 | [2] Executing script: start-dev-api
dev_1 | [2] 
dev_1 | [2] to be executed: node ./bin/api.js 
dev_1 | [0] ==> 🚧 Webpack development server listening on port 3001
dev_1 | [2] ----
dev_1 | [2] ==> 🌎 API is running on port 3030
dev_1 | [2] ==> 💻 Send requests to http://localhost:3030
dev_1 | [1] ----
dev_1 | [1] ==> ✅ React Redux Example is running, talking to API server on 3030.
dev_1 | [1] ==> 💻 Open http://0.0.0.0:3000 in a browser to view the app.
dev_1 | [0] Hash: 4bfaa3d4b9c381888d2a
dev_1 | [0] Version: webpack 1.13.3
dev_1 | [0] Time: 44424ms
dev_1 | [0] Asset Size Chunks Chunk Names
dev_1 | [0] af7ae505a9eed503f8b8e6982036873e.woff2 77.2 kB [emitted] 
dev_1 | [0] f4769f9bdb7466be65088239c12046d1.eot 20.1 kB [emitted] 
dev_1 | [0] fa2772327f55d8198301fdb8bcfc8158.woff 23.4 kB [emitted] 
dev_1 | [0] e18bbf611f2a2e43afc071aa2f4e1512.ttf 45.4 kB [emitted] 
dev_1 | [0] 89889688147bd7575d6327160d64e760.svg 109 kB [emitted] 
dev_1 | [0] 674f50d287a8c48dc19ba404d20fe713.eot 166 kB [emitted] 
dev_1 | [0] 448c34a56d699c29117adc64c43affeb.woff2 18 kB [emitted] 
dev_1 | [0] fee66e712a8a08eef5805a46892932ad.woff 98 kB [emitted] 
dev_1 | [0] b06871f281fee6b241d60582ae9369b9.ttf 166 kB [emitted] 
dev_1 | [0] 912ec66d7572ff821749319396470bde.svg 444 kB [emitted] 
dev_1 | [0] c29770d03d2e95e3ea5899d57c6cfeab.jpg 92.2 kB [emitted] 
dev_1 | [0] main-4bfaa3d4b9c381888d2a.js 9.61 MB 0 [emitted] main
dev_1 | [0] webpack built 4bfaa3d4b9c381888d2a in 44424ms
```

Then it's good to go, open http://localhost:3000 to see the starter project home page.

Try to make some changes to the source code, you should see the changes reflected immediately without
any page reloading, this is called hot module reloading, a really awesome feature to boost development
productivity.

{% img center /images/2016/11/07/react-instant-changes.gif React Project Instant Changes %}

## Deployment

We're going to deploy the Docker image. There are guides that you can follow:

- Deploy on Heroku: https://github.com/hoatle/react-redux-universal-hot-example/blob/master/docs/dev-guide/how-to-deploy-on-heroku.md
- Simple deployment with docker-compose: https://github.com/hoatle/react-redux-universal-hot-example/blob/master/docs/dev-guide/how-to-deploy-on-production-with-docker-compose.md

There are many production best practices that we should improve for the starter project.

## CI (continuous integration) and CD (continuous delivery)

By using CI and CD systems like travis-ci and gitlab-ci, we could stick to the following process:

- Pull request (merge request) is sent -> CI checks.
- Code changes -> CI checks.
- CI checking is passed, then CD starts.
- CD will deploy automatically, for example, to Heroku or other providers or your in-house data
  center.

You can update all of these steps by adjusting the following files accordingly:

- https://github.com/hoatle/react-redux-universal-hot-example/blob/master/.travis.yml
- https://github.com/hoatle/react-redux-universal-hot-example/blob/master/.gitlab-ci.yml

At the CI checking step, we build Docker images (both development and production images):

- https://hub.docker.com/r/hoatle/react-redux-universal-hot-example/tags/
- https://gitlab.com/hoatle/react-redux-universal-hot-example/container_registry

The development images install all development stuff (excluding the source code) so that
all the developers should have the same development environment as long as they're using the same
development image.

The production (distribution) images install and package all runtime stuff so that everyone could
run the applications right away with the same runtime environment.

You can see these CI systems in action:

- https://travis-ci.org/hoatle/react-redux-universal-hot-example/builds
- https://gitlab.com/hoatle/react-redux-universal-hot-example/pipelines

Building on travis-ci is super fast and it's very slow on gitlab-ci. However, using gitlab is free
for unlimited projects, it includes Docker registry for free, too.

You can install gitlab on your server, it should be faster but you have to pay for the devops
maintenance cost.

If you could pay for Docker Hub, Github and Travis-CI, it's super fast and convenient for development
without the devops maintenance cost.

Or even better, ping us for consulting :-).

## react-boilerplate introduction

`react-redux-universal-hot-example` is a good start, however, there are still many improvements that
we'd like to add, for example:

- Better code and component organization convention. The Angular 2 convention is a really great
  inspiration for this.
- Update dependencies to latest versions.
- Build the deployment Docker that should include runtime stuff only, not development stuff.
- Server side code should be production ready and optimized.

And there are more to do. So we intent to create a better `react-redux-universal-hot-example` version,
we call it `react-boilerplate`.

The project is located at: https://github.com/teracyhq/react-boilerplate . We'll announce v0.1.0 as soon
as possible when it's ready. So stay tuned! At present we should use `react-redux-universal-hot-example`.

## React application consulting and developing service

We're offering React application consulting and developing service.

If you want React development and production deployment help, don't hesitate to ping us. We're
eager to help you to develop world-class React applications with better and better developer experience
and production deployment.

## Learn more

You should learn more about React at:

- http://exploringjs.com/es6/
- https://github.com/veggiemonk/awesome-docker
- https://github.com/enaqx/awesome-react
- https://github.com/hoatle/react-redux-universal-hot-example#about

Hopefully, this is a good start for React newbies to explore the whole new world of modern web
application development.

Happy hacking!
