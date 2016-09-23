---
layout: post
title: "How to develop Angular 2 applications easily with Docker and angular-cli"
author: hoatle
date: 2016-09-22 12:44
comments: true
categories:
    - "en"
    - "how-to"
tags:
    - "docker"
    - "angular-cli"
    - "docker-angular-cli"
    - "angular-boilerplate"
cover: /images/2016/09/22/angular-boilerplate.png
description: How to develop Angular 2 applications easily with Docker and angular-cli
keywords: Angular 2, easily, Docker, angular-cli, docker-angular-cli
published: true
---
{% img center /images/2016/09/22/angular-boilerplate.png angular-boilerplate %}

Everyone who is new to Angular 2 usually has many difficulties to get started with it, even with the
getting started article from the Angular 2 official documentation. That's the reason why
[angular-cli](https://cli.angular.io/) is created to ease the pain. `angular-cli` is a great CLI
tool, however, it takes a lot of time to get it working by installing nodejs and `angular-cli`.
Luckily, we've created [docker-angular-cli](https://github.com/teracyhq/docker-angular-cli) project
to build a Docker image so that anyone could use it right away for any Angular 2 projects without the
hassle of installing nodejs and `angular-cli`. This guide will help you get started in the most
easily and convenient way. It's assumed that you don't need to master Docker but only require that
Docker is installed on your machine and you could follow the instructions below.

<!-- more -->

0. Prerequisites
----------------

- Make sure the latest `Docker` and `docker-compose` is installed on your machine. If not, follow
https://docs.docker.com/docker-for-mac/ or https://docs.docker.com/engine/installation/linux/ or
https://docs.docker.com/docker-for-windows/ to install them.

- `docker-angular-cli` is tested with `Docker` v1.12.1 and `docker-compose` v1.8.0 with the native app
on Mac and on Ubuntu. It should work well on Windows, too.

1. Init a new project
---------------------
First, to init a new Angular 2 project, follow:

```
$ mkdir new-ng-project
$ cd new-ng-project
$ docker run -it --rm -v "$PWD":/usr/src -w /usr/src teracy/angular-cli /bin/bash
```

After that, you should be presented with bash console for the docker container. Use `ng init` to
init a new project.

```
# ng init --name <project-name> --style scss
```

You should see the <project-name> yourself. By default, the style file is `css`. I recommend using
`scss` extension for style files.

2. Add Dockerfile and docker-compose.yml file
---------------------------------------------

Add Dockerfile and docker-compose.yml as I did with https://github.com/teracyhq/angular-boilerplate/commit/082a879c5df3fa0ae6ddc000d84512754b62a642

3. Note for angular-boilerplate
-------------------------------

For easier setup with best practices, you can combine the 2 steps above (1 + 2) with:

```
$ git clone git@github.com:teracyhq/angular-boilerplate.git --depth=1 new-ng-project
```

More useful stuff will come to [angular-boilerplate](https://github.com/teracyhq/angular-boilerplate)
later such as CI, CD, production deployment, server side rendering, desktop app and native apps, etc
best practices.

4. Serve
--------

To start serving the web app, follow:

```
$ docker-compose up serve
```

and then open http://localhost:4200 to see the web app.


5. Test
-------

To run the unit test with Karma and Chrome, follow:

```
$ docker-compose up test
```

and you should see the unit test running on Chrome browser pre-installed on the Docker image.

6. Exec commands
----------------

To exec some commands, for example:

for linting (code style checking):

```
$ docker-compose exec serve ng lint
```


or for installing more npm packages:

```
$ docker-compose exec serve npm install
```

or for running unit tests:

```
$ docker-compose exec serve ng test --browsers Chrome_no_sandbox
```

You can exec any commands on the running container.


7. Develop
----------

Or if you want to open a new ssh session, open a new terminal window, and execute this:

```
$ cd new-ng-project
$ docker-compose run serve /bin/bash
```

and then you should see something like:

```
Starting virtual X frame buffer: Xvfb.
Executing command /bin/bash
root@6d15153f5858:~# 
```
And now you can execute any commands you want.

That's it. Now you should start developing Angular 2 applications more easily with `docker-compose`
and `angular-cli` by using `docker-angular-cli`.

You can follow the following tutorial to create a simple todo application: https://www.sitepoint.com/angular-2-tutorial/


8. Learn more
-------------

- https://github.com/AngularClass/awesome-angular2
- https://github.com/timjacobi/angular2-education

If you need any consultancy or outsourcing, please contact us. We're eager to build world class web
applications for you!

Happy developing!
