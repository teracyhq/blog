---
layout: post
title: "How to set up CI/CD system for Next.js with Docker on gitlab-ci, travis-ci, Heroku and Kubernetes"
author: hoatle
date: 2017-05-09 01:14
comments: true
categories:
    - "en"
    - "how-to"
tags:
    - "CI/CD"
    - "Next.js"
    - "Docker"
    - "Heroku"
    - "Kubernetes"
    - "Helm"
cover: /images/2017/05/09/nextjs-hello-world-travis-ci.png
description: How to set up CI/CD system for Next.js with Docker on gitlab-ci, travis-ci, Heroku and Kubernetes
keywords: how to, CI/CD system, Next.js, Docker, gitlab-ci, travis-ci, Heroku, Kubernetes
published: true
---

{% img center /images/2017/05/09/nextjs-hello-world-travis-ci.png travis-ci builds %}

Setting up a CI/CD (continuous integration/continuous delivery) system for Docker applications to be
deployed on staging and production environment with scalability and high availability is not hard.
It took a while to get it done properly, and today I will show you how to set up that system properly
with a Next.js application as an example. You can apply the same process for all other kinds of
Docker applications. So let's get started.

<!-- more -->

# Prerequisites

Newcomers to Docker ecosystem can enjoy this tutorial.

Experienced ones to Docker ecosystem can review this for your approach and suggest what we can do for
a better approach.

If you know these systems below, that's great and easier to follow this tutorial:

- Docker
- gitlab-ci, travis-ci as CI/CD system
- Heroku as a PaaS (Platform as a Service)
- Kubernetes (Production-Grade Container Scheduling and Management)
- Helm (The Kubernetes Package Manager)


# Getting Started

First, you need to have Docker installed on your system. To make it easier for all platforms (Linux,
macOS, Windows), we're going to use `teracy-dev` for local dev environment.

To know why `teracy-dev`, see the blog [Teracy-dev - the Only Truly Universal Productive Development Platform With Docker on macOS, Linux and Windows](/2016/12/20/teracy-dev-the-only-truly-universal-productive-development-platform-with-docker-on-macos-linux-and-windows/).


You're not required to use teracy-dev, however, using it should help you follow this tutorial more easily.


We're going to use https://github.com/acme101/nextjs-hello-world as an example project.

`acme101` is a sample github organization which has all the best practices from `teracy-dev` applied
for organizations, follow it and you can't get lost.

`nextjs-hello-world` is the simplest seed code for Next.js applications with Docker workflow, CI/CD system:

- CI/CD with gitlab-ci: https://gitlab.com/acme101/nextjs-hello-world/pipelines

- CI/CD with travis-ci: https://travis-ci.org/acme101/nextjs-hello-world/builds

- Auto deployment to Heroku: https://acme-nextjs-staging.herokuapp.com/

- Auto deployment to GKE (Kubernetes) with terapp.com (A record domain): https://acme-nextjs-staging.terapp.com/

To set up the project on local development:

- Follow: https://github.com/acme101/dev-setup/blob/master/README.md

- Check out the repo into the `acme-dev/workspace` directory

That's it, you're ready to work on the local dev environment.


# Local Dev Environment

Our development philosophy is this: everything can and should be done on local development with 
consistent behaviors between all developers and production deployments.

And Docker helps us with that to create a consistent build-time and run-time environment for all.

Usually, there are 3 modes on local dev for our workflow:

- Dev Mode: developers work on this for new changes, this usually contains development dependencies.

- Prod Mode: developers need to make sure that production Docker image should work on local dev.
  This production Docker image, which is different from the one from dev mode, will contain only
  the production dependencies, and the runtime environment only.

  If developers can only make it work on dev mode, prod mode can break. If prod mode breaks, developers can
 check and fix it on local dev. This is really conveninent and time saving.

- Prod Review Mode: we should review the work from others and this mode help us for faster reviewing
  process. Basically, everyone's work branch will have the corresponding production Docker image that
  we can review it right away on our local dev environment. We don't have to checkout the codes to start
  reviewing.

  This is helpful for us to set up CI/CD system for reviewing process later: when a pull request is sent,
  the CI/CD system should deploy it right away for QA to validate, for example.


The following is the more details about how to use these modes:

## Dev Mode

To run dev mode on the current source code.

```
$ vagrant ssh
$ ws
$ cd nextjs-hello-world
$ docker-compose up -d dev && docker-compose logs -f dev
```

Open dev.nextjs.acme.dev (http + https modes) to check it out.

## Prod Mode

To run prod mode on the current source code.

```
$ docker-compose run --rm dev yarn run build && \
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml build prod && \
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d prod
```

We usually scale at least 2 or more containers, so please scale it on local dev too to make sure scaling should work:

```
$ docker-compose -f docker-compose.yml -f docker-compose.prod.yml scale prod=2
```

Open nextjs.acme.dev (http + https modes) to check it out.


Don't forget to remove the container after checking out for cleaning up:

```
$ docker-compose -f docker-compose.yml -f docker-compose.prod.yml stop prod && \
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml rm -f prod
```

## Prod Review Mode

To review prod mode from different built Docker image.

For example, I need to review the `hoatle/nextjs-hello-world:features-1-something` Docker image
from @hoatle.

```
$ export DOCKER_IMAGE_REVIEW=hoatle/nextjs-hello-world:features-1-something && \
docker-compose -f docker-compose.yml -f docker-compose.review.yml pull review && \
docker-compose -f docker-compose.yml -f docker-compose.review.yml up -d review
```

We usually scale at least 2 or more containers, so please scale it on local dev too to make sure scaling should work:

```
$ docker-compose -f docker-compose.yml -f docker-compose.review.yml scale review=2
```


Open review.nextjs.acme.dev (http + https modes) to check it out.


Don't forget to remove the containers after checking out for cleaning up:

```
$ docker-compose -f docker-compose.yml -f docker-compose.review.yml stop review && \
  docker-compose -f docker-compose.yml -f docker-compose.review.yml rm -f review
```

That's how we, developers, usually work on local development. And to streamline the work, we need
to deploy the applications on production system.


The `docker-compose` commands above are rather long, maybe you can create bash files to run more easily,
for example, `$ dev.sh start`, `$ dev.sh stop`, `$ prod.sh build`, `$ prod.sh start`, `$ prod.sh stop`,
`$ review.sh start <image_for_review>` and `$ review.sh stop`.


# Production System

We build Docker images for deploying so we can leverage any system that accept Docker image.

In this tutorial, we use Heroku and Kubernetes, but you can choose whatever system that Docker is supported.


Heroku is very easy to be used, just push the Docker image and it should work.

Kubernetes (K8s) and Helm is easy to work with, it's mature and it gives us more control over everything.
I recommend using Kubernetes for production system to automate it all.

## Heroku Deployment

You can follow https://devcenter.heroku.com/articles/container-registry-and-runtime to deploy your
Docker image to Heroku.


## K8s Deployment

You can use Google Container Engine (GKE) to deploy K8s applications. Using Helm as the K8s package
manager is more easier and convenient.

I created the Helm chart for this application here:
https://github.com/acme101/nextjs-hello-world/tree/develop/helm-charts/nextjs-hello-world


We can install it right away:

```
$ helm install halm-charts/nextjs-hello-world
```


# CI/CD Systems

To automate all the development integration and production deployment, we use CI/CD systems. You can
use any CI/CD systems available. In this sample project, I set up for gitlab-ci and travis-ci, they
share the same steps and these steps can be applied to any other CI/CD systems.

A typical CI/CD system will need to:

- check for new changes
  + code style
  + security
  + all kinds of tests

- when checks passes, build the production Docker image and push to the Docker registry

- take the production Docker image and deploy it to the production systems

- everyone enjoys the new changes!

The CI/CD system should work on any forked repo, too.

And to get it work, we need to provide the some environment variables settings. To know more about
some of these variables, please follow:

- How to deploy on Heroku: https://github.com/acme101/dev-setup/blob/master/docs/how-to-deploy-on-heroku.md

- How to deploy on GCP: https://github.com/acme101/dev-setup/blob/master/docs/how-to-deploy-on-gcp.md


# Sum up

In this tutorial, I've introduced the development philosophy and workflow that we apply for all our
projects at Teracy and our clients' projects. I hope that it could be helpful to others to boost
your productivity with software development.

Happy developing!
