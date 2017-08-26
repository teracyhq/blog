---
layout: post
title: "kubernetes-stack v0.1.0 Release"
author: hoatle
date: 2017-08-26 09:03
comments: true
categories:
    - en
    - news
    - projects
tags:
    - chef
    - cookbook
    - kubernetes
    - gcloud
    - devops
cover: 
description: kubernetes-stack cookbook v0.1.0 release announcement
keywords: kubernetes, kubernetes-stack, gcloud, k8s, utilities, devops
published: true
---

It's been more than two months since we introduced the inception of the `kubernetes-stack` cookbook
from [this blog post](2017/06/15/how-to-extend-teracy-dev-to-work-with-kubernetes/) and today we're
very happy to announce the very first milestone release of it.

<!-- more -->

## What's new?

This milestone release helps us to manage the installation of these packages: `kubectl`, `helm`,
and `gcloud` automatically.

These are the client packages which are used to communicate and to work with the Google Cloud Platform,
Google Container Engine or any other Kubenertes servers.

You can install, remove any valid versions of those packages onto Ubuntu or CentOS platforms and more
supported platforms will come.


## What's next?

This cookbook is designed to provide utilities for us to work with `Kubernetes` stack, so the next
milestone will introduce `kubernetes` resource to set up and install `Kubernetes` server which
should work the same as `Minukube` with better developer productivity and enhancement. This
will allow our developers to have a quick local deployment test with k8s on their workstations.

By using this, we can save a lot of server cost, reduce testing time and speed up delivery time of
application deployments.

Developers will understand `Kubernetes` more deeply when they can do whatever they want with it,
it's very safe, they can destroy and set up a new deployment anytime they want without causing any
harm to their co-workers.

You should checkout how it should be used with `teracy-dev` here at: https://github.com/acme101/dev-setup/blob/develop/chef/main-cookbooks/acme/recipes/k8s.rb

I hope that this free cookbook could make your lives easier when working with `Kubernetes`:
https://supermarket.chef.io/cookbooks/kubernetes-stack

Happy hacking!

