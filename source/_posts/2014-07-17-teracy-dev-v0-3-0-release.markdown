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
goal of development, that is the reason why we creat [teracy-dev][]. It's a virtualbox virtual
machine that is provisioned by `Chef`[^1] and managed by `vagrant`[^2]. And today we're very happy
to announce [teracy-dev][] v0.3.0 after more than a year of development and usage.

<!-- more -->

To create an isolated development environment is our goal of Teracy development from day one and we
decided to use `vagrant`, `Chef` to provision a consistent VM for all our developers.
It saves a lot of time, a very cheap operation to destroy and provision a new VM again in minutes
with the exact defined provisioned software packages.


We're using Chef to provision a VM with `nodejs`, `mysql`, `php`, `coldfusion` for a client to develop
a wordpress, a coldfusion and a MVC client (use backone.js with Grunt build), and it works great.

Before applying this, it often takes several days for new developers to install every packages on
their machines and they must follow instruction guide, but not anymore with [teracy-dev][].
Every new developers just need 2-3 hours to get the dev VM provisoned for the first time (to
download the basebox thanks to `vagrant cloud`) and it just takes less than 1 min to
`$ vagrant destroy` and `$ vagrant up` later again - this is a very cheap operation.


[teracy-dev][] is a general-purpose development environment for all developers for all platforms
(`nodejs`, `python`, `java`, `php`, `mysql`, `posgreSQL`, `mongodb`) built-in and you could extend
more by using `Chef` to create more cookbooks or recipes for it.


However, we still have performance problem with shared folder, especially it's really show and
painful on Windows host machine. We're going to fix this problem on next version (v0.4.0).

`docker`[^3] is very promising and we'd like to use it for our workflow at v0.4.0, too.

Stay tuned for our upcoming exciting release version.

Have a nice day and happy coding!


Credit
------

- http://www.superbwallpapers.com/computers/binary-code-9004/


[teracy-dev]: https://github.com/teracy-official/dev
[^1]: http://www.getchef.com/
[^2]: http://www.vagrantup.com/
[^3]: https://www.docker.com/
