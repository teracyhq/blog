---
layout: post
title: "teracy-dev v0.5.0-b1 release"
author: 
date: 2017-02-14 12:41
comments: true
categories:
    - en
    - news
    - projects
tags:
    - teracy-dev
    - vagrant
    - vm
    - docker
    - chef
    - devops
cover: 
description: teracy-dev v0.5.0-b1 release announcement
keywords: teracy-dev, vagrant, docker, chef, devops
published: true
---

We're very happy to announce our so long awaiting major release of teracy-dev, the v0.5.0-b1 release 
that introduces lots of features and changes, high performance with Docker workflow as the default.

<!-- more -->

## v0.5.0-b1

This is the beta 1 release of v0.5.0, what does it mean? By following the
[semantic versioning guide](http://dev.teracy.org/docs/semantic_versioning.html), it means:

{% blockquote %}
features completed, only minor bugs are expected. Avoid refactoring here, just fix bugs
{% endblockquote %}

This v0.5.0-b1 release is tested with all our projects and our clients' projects, so we can guarantee
that the release has a very high quality and stability that you can use it for everyday projects.

We're still lacking lots of documentation guides for users to explore and leverage all the supported
features more easily.

## Changes

This major release includes lots of features and improvements:

- high performance on Windows, especially file syncing
- Docker workflow out of the box, can use any versions of docker, docker-compose
- support all type of provisioners configurations
- use public_network by default
- config override the object within array
- Vagrantfile-ext support
- use rsync as the default sync mechanism (with the support from vagrant-gatling-rsync and
  vagrant-rsync-back plugins)
- reverse proxy support with /etc/hosts update for auto domain management
- auto vagrant plugins installation support

There are more that you should explore yourselves when using ``teracy-dev`` for a while.


## What's next?

We're working hard to add more documentations and guides. We'll fix bugs if any.

After v0.5.0 final is release, we'll take on the next major release v0.6.0 that follow our
[teracy-dev's vision](/2016/08/19/teracy-dev-vision/):

{% blockquote %}
teracy-dev is the best universal development tool for everyone.
{% endblockquote %}

We'll take all the feedback from v0.5.0 usage to continue making `teracy-dev` better and greater.

Don't hesitate to use [teracy-dev v0.5.0-b1](https://github.com/teracyhq/dev) for your everyday
projects from today by getting started with http://dev.teracy.org/docs/getting_started.html

If you have any feedbacks or problems, you're welcome to create issues for the project at
https://github.com/teracyhq/dev/issues

Enjoy and happy hacking!
