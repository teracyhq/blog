---
layout: post
title: "How to develop Angular 2+ applications easily with Docker, angular-cli and angular-boilerplate"
author: hoatle
date: 2017-03-22 18:16
comments: true
categories:
    - "en"
    - "how-to"
tags:
    - "angular"
    - "angular-boilerplate"
    - "angular-cli"
    - "docker"
    - "teracy-dev"
    - "acme101"
cover: /images/2017/03/22/acme101-angular-hello-world.gif
description: How to develop Angular 2+ applications easily with Docker, angular-cli and angular-boilerplate
keywords: Angular 2+, Docker, angular-cli, docker, angular-boilerplate, seed, teracy-dev, acme101
published: true
---

{% img center /images/2017/03/22/acme101-angular-hello-world.gif Acme 101 angular-hello-world %}

About six months ago we published
[How to Develop Angular 2 Applications Easily With Docker and Angular-cli](/2016/09/22/how-to-develop-angular-2-applications-easily-with-docker-and-angular-cli/) which received a lot of
Angular community feedbacks and questions.

6 months has passed and we'd like to share more best practices to develop Angular applications with
Docker after working on it for a while.

<!-- more -->


Received Feedbacks
------------------

We received some outstanding feedbacks and questions about:

- Problems when running Docker images after pulling the built Docker images.
- How to build prod Docker image and run it.
- How to get `npm` packages into the `node_modules` to work within your IDE, editor.

And in this blog post, we're going to solve all of them and even with more best practices.


angular-boilerplate
-------------------

Setting up Angular projects with Docker to get it work properly is not easy. Luckily, we've done
all the heavy lifting for you with the `angular-boilerplate` project.

`angular-boilerplate` was created as a seed project that can be used to generate any new Angular
projects having Docker and CI/CD system support.

To generate a new Angular project, you can check out the README.md file to follow.



angular-hello-world
-------------------

In this section, I'll introduce you the best way to set up a development environment and you can apply
it for all your projects, not just Angular projects. After some first required steps to set up
`acme-dev`, after `$ vagrant up`, you can start coding immediately, you don't have to learn the set
up steps at first, but defer it later.

Suppose that we're in Acme organization and we need to work on the `angular-hello-world` project.

Let's follow the README file here: https://github.com/acme101/angular-hello-world

It tells us to follow https://github.com/acme101/dev-setup/blob/master/README.md

By setting up `acme-dev`, we can use it for all types of projects with different stacks with the same
set up workflow, it means that we can save a lot of time and effort to add more and more projects.

Re-using and scaling boots productivity and cost savings.


Best practices
--------------

By looking into the `angular-boilerplate` or `angular-hello-world`, you can see the following best
practices:

- We should build the production Docker image for production deployment.

- We should work on dev mode on local dev.

- We should work on prod mode on local dev.

- We should review others' work on local dev.

- We should use alias domains instead of fixed ports to avoid conflicts.

- We should generate `node_modules` to work on the npm packages safely within your IDE.

- We should use `yarn` instead `npm` as the node package manager.

- We should test both dev and prod modes on local dev.

- We should test both http and https modes on local dev.

All the instruction should be updated in the README file, please follow there to apply for your
project: https://github.com/acme101/angular-hello-world/blob/develop/README.md


Summary
-------

All the heavy lifting and best practices are documented into the corresponding projects, that's how
we should do so that everyone can follow easily and we can support each other with ease, too.

Hopefully, this will help you a lot with your Angular projects and any other projects that you can
apply similarly.

Happy hacking and don't forget to let us know your feedbacks and questions by leaving your comments!
