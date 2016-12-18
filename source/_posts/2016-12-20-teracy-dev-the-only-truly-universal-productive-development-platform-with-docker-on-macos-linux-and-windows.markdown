---
layout: post
title: "teracy-dev - the only truly universal productive development platform with Docker on macOS, Linux and Windows"
author: hoatle
date: 2016-12-20 11:13
comments: true
categories:
    - "en"
    - "projects"
tags:
    - "dev"
    - "teracy-dev"
    - "docker"
    - "vagrant"
cover: /images/2016/12/20/teracy-dev-comparisons.png
description: "teracy-dev - the only truly universal productive development platform with Docker on macOS, Linux and Windows"
keywords: teracy-dev, Docker, Vagrant, productive development, macOS, Linux, Windows
published: true
---

Docker is great to work with, it solves a lot of problems on development, distribution, and production
deployment.

Why Docker?  You can find the answer here: https://blog.codeship.com/why-docker/

Docker works great on Linux, however, it's very challenging to make it work universal and consistent on
Mac and Windows. There are lots of efforts to solve this problem, from Docker themselves and from
Docker community, too. However, we haven't achieved that stage yet (until `teracy-dev`).

<!-- more -->

These are some of the problems that Docker community has to deal with on Mac and Windows:

- No consistent universal development environment and workflow on Linux, Windows, Mac. This is a very
  important factor for team collaboration so that anyone from any OS platforms could collaborate and help
  each other with no differences in the development environment.

- Mounted volumes on VirtualBox use vboxsf, which is extremely slow. This is true for Boot2Docker and
  Vagrant default file sync mechanism on Virtualbox.

- Native Docker applications offered by Docker:
  + Slow on Mac: https://github.com/docker/for-mac/issues/77
  + Window 10 with recent latest build only is supported
  + Slow on Windows: https://github.com/docker/for-win/issues/188


- File watching is broken on VirtualBox since vboxsf does not trigger the inotify file watching
  mechanism. `nodemon`, hello?


There are a lot of Docker community projects trying to solve those problems:

- https://github.com/brikis98/docker-osx-dev
- https://github.com/blinkreaction/boot2docker-vagrant
- https://github.com/codekitchen/dinghy
- https://github.com/leighmcculloch/docker-unison
- https://github.com/gansbrest/hodor
- https://github.com/adlogix/docker-machine-nfs
- others...

However, those existing projects that do not really resolve all the problems or do not reflect
our vision for a productive development platform.

You could check out our [vision for teracy-dev](/2016/08/19/teracy-dev-vision/) for such the
productive development platform.

That is the reason why we created `teracy-dev`. We've been using and loving it for more than 3 years
and counting.

`teracy-dev` reflects our vision for a truly universal productive development platform that anyone can
use to develop software easily. It's very easy to customize any OS that you can use
for your VM. It brings development and production environment closer and closer.

It is very important for a distributed team like us to work with everyone from different teams all
over the world on different projects with different stacks and `teracy-dev` helps us a lot.

Moreover, `teracy-dev` is not tightly coupled with anything, you're free to choose anything to build
up your development VM machine. You can choose different OS platforms, choose different software packages to
be automatically installed with the help of different configuration management tools. It's up
to you to choose anything other than default settings.

With default settings, `teracy-dev` chooses Ubuntu as the base OS with `docker` and `docker-compose`
installed to start developing software with Docker right away after `$ vagrant up`.

teracy-dev v0.5.0 is leveraging Docker for development as we believe in the future of containers
and Docker.


Let's have some comparisons between `teracy-dev` and other solutions:

   Criteria                         | teracy-dev | docker-osx-dev | Docker Toolbox | Docker native app
------------------------------------|------------|----------------|----------------|-------------------
same workflow on Linux, Mac, Windows|    ✅      |       ❌       |     ❌        |       ✅          
native speed on mounted volumes     |    ✅      |       ✅       |     ❌        |       ❌          
2-way file sync                     |    ✅      |       ❌       |     ✅        |       ✅          
file watching (inotify)             |    ✅      |       ✅       |     ❌        |       ✅          
open source                         |    ✅      |       ✅       |     ✅        |       ❌          
customization                       |    ✅      |       🚫       |     🚫        |       ❌          


Let me explain the criteria:

- "same workflow on Linux, Mac, Windows": the usage should be the same on Mac, Linux, Windows

- "native speed on mounted volumes": the speed should be as fast and native as on Linux

- "2-way file sync": for syncing back and forth on mounted volumes, this is mandatory for development

- "file watching (inotify)": for auto reload when files change

- "customization": you have full control and are encouraged to change anything that you want to
  suite your need, no hidden stuff, no lock-in and can still upgrade seamlessly.

Let's see what the same workflow means when developing a simple hello world `nodejs` application
from scratch with teracy-dev by watching the following videos:

On Linux (Ubuntu):

<iframe width="100%" height="630" src="https://www.youtube.com/embed/ze8p9imprgk" frameborder="0" allowfullscreen></iframe>

On Windows:

<iframe width="100%" height="630" src="https://www.youtube.com/embed/2200zvxIdAs" frameborder="0" allowfullscreen></iframe>

On macOS:

<iframe width="100%" height="630" src="https://www.youtube.com/embed/XF-FQQKG8PA" frameborder="0" allowfullscreen></iframe>

They all contain the same steps, that's what "same workflow" means.


`teracy-dev` is not perfect, though. There are some improvements that we'd like to address.

The first thing we'd like to improve is to reduce the setup time. It takes time (around 20-30 mins)
to download the vagrant box (Ubuntu 16.04) for the first time. This is for the first time only, however.
After the first time, you can destroy and provision the same VM within some minutes. We could use
some other smaller boxes (boot2docker base box, for example) but we'd like to stick to the most popular
Linux OS that is widely used in production. We try to make development and production environment as
close as possible. This is by default, you can choose different base boxes as you wish.


`teracy-dev` v0.5.0 is under preview stage, we need to add more documentation and get more community
feedback.

`teracy-dev` is created to give back to open source community as we learn and get a lot from our amazing
open source community.

And we need you, please try and let us know your feedback and we'll together fix any problems.

You should get started with `teracy-dev` here: http://dev.teracy.org/docs/develop/getting_started.html

In summary, `teracy-dev` brings `Docker` closer to `Vagrant` = love.

Thank you and happy hacking with `teracy-dev`!
