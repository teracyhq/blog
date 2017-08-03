---
layout: post
title: "teracy-dev v0.5.0-c1 release"
author: phuonglm
date: 2017-07-27 03:41
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
description: teracy-dev v0.5.0-c1 release announcement
keywords: teracy-dev, vagrant, docker, chef, devops
published: true
---

We’re very happy to announce the release of teracy-dev v0.5.0-c1. This version introduces lots of features and changes which support more development, deployment stack along with Docker and Kubernetes.



## v0.5.0-c1

As you've known, the RC-1 version means “all minor bugs are fixed, the software works stably, and the code will be released unless there is a last minute bug found after test campaigns.”. However, to meet some requests from our clients and community, we added some features to this release.
<!-- more -->

## Changes

This major release includes some bugs fixed, document improvement and new features:

- Support the project base configuration. From now, you can add a list of vagrant configuration to your JSON file and extend the configuration from that.
- Update the document for the getting started with windows environment, nodejs debugging.
- Add many tools to help your development process.
- Add the ability to extend and uniquely extend the array list in the JSON configuration file.
- Introduce ACME101 as the sample project which shows the best practices of using teracy-dev.

There are more that you should explore yourselves when using ``teracy-dev`` for a while.

## What's next?
Along with the project base configuration we also introduce [ACME101](https://github.com/acme101) which has many development stacks to use with teracy-dev. Hopefully, it will be useful for you and we're welcome any contribution, suggestion for ACME101. We're also adding more documents and guide for the project. 

We'll take all the feedbacks from v0.5.0 usage to continue making `teracy-dev` better and greater.

Don't hesitate to use [teracy-dev v0.5.0-c1](https://github.com/teracyhq/dev) for your everyday
projects from today by getting started with http://dev.teracy.org/docs/getting_started.html

If you have any feedbacks or problems, you're welcome to create issues for the project at
https://github.com/teracyhq/dev/issues

Enjoy and happy hacking!
