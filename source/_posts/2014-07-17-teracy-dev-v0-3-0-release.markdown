---
layout: post
title: "teracy-dev v0.3.0 release"
author: hoatle
date: 2014-07-17 03:39
comments: true
categories:
    - "en"
    - "news"
    - "projects"
tags:
    - "dev"
    - "vagrant"
    - "virtualbox"
    - "docker"
cover: /images/2014/07/binary_code.jpg
description: teracy-dev v0.3.0 release annoucement
keywords: teracy-dev, v0.3.0 release annoucement, dev, vagrant, virtualbox, docker
published: true
---

{% img center /images/2014/07/binary_code.jpg %}


Creating an isolated consistent development with a predefined consistent workflow is always our
goal of development, that is the reason why we create [teracy-dev][]. It is a virtualbox virtual
machine (VM) that is provisioned by `Chef`[^1] and managed by `vagrant`[^2]. Today, we are very happy
to announce [teracy-dev][] v0.3.0 released  after more than a year of development and usage.

<!-- more -->

We have used `vagrant` and `Chef` to provision a common VM for all our developers.
It saves a lot of time and is a very cheap operation to destroy and provision a new VM again in minutes
with the exactly defined provisioned software packages.


We are now using `Chef` to provision a VM with `nodejs`, `mysql`, `php`, `coldfusion` for a client to
develop a wordpress, a coldfusion and a MVC client (using backone.js with Grunt build), and it works
great.

Normally, it takes several days for new developers to install every packages on
their machines and they must follow instruction guide, but not anymore with [teracy-dev][].
Every new developer just needs 2-3 hours to get the dev VM provisoned for the first time (to
download the basebox thanks to `vagrant cloud`) and it just takes less than 1 minute to
`$ vagrant destroy` and `$ vagrant up` later again - this is a very cheap operation.


[teracy-dev][] is really a general-purpose development environment for all developers for all platforms
(`nodejs`, `python`, `java`, `php`, `mysql`, `posgreSQL`, `mongodb`) built-in and you could extend
more by using `Chef` to create more cookbooks or recipes for it.


However, we still have performance problem with shared folders. It is still quite slow and
painful on Windows host machine. We are going to fix this problem on the next version (v0.4.0).

`docker`[^3] is very promising and we'd like to use it for our workflow at v0.4.0, too.

Please stay tuned for our upcoming exciting release version.

Have a nice day and happy coding!


Credit
------

- http://www.superbwallpapers.com/computers/binary-code-9004/


[teracy-dev]: https://github.com/teracy-official/dev
[^1]: http://www.getchef.com/
[^2]: http://www.vagrantup.com/
[^3]: https://www.docker.com/
