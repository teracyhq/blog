---
layout: post
title: "teracy-dev v0.4.0 release"
author: hoatle
date: 2015-05-22 09:19
comments: true
categories:
    - "news"
    - "projects"
tags:
    - "teracy-dev"
    - "teracy-chef"
    - "chef"
    - "vagrant"
    - "devops"
    - "vm"
cover:
description:
keywords:
published: true
---

About 1 year 8 months ago we announced the `teracy-chef` v1.0.0 release[^1] with a plan to extend
it for `teracy-dev`. And today we're very happy to announce `teracy-dev` v4.0.0 release, a really
important release we've been waiting for after nearly 2 years of development. Why is it so
important?

<!-- more -->

Easy Setup And Time Saving
--------------------------

Traditionally, setting up a development environment takes a lot of time to install the required
packages and it also requires skillful developers to do it. Now with `teracy-dev`, its mission
is to be an `all in one development environment managed by Vagrant and provisioned by Chef`.
It's easy and cheap to install the same development environment on all types of operating
systems (Linux, Mac, Windows) by just following some simple steps with a clear guide[^2].


All In One Development Environment
----------------------------------

You want to work with:

- Python? here we go: http://dev.teracy.org/docs/0.4.0/python_dev_guide.html
- Node.js? here we go: http://dev.teracy.org/docs/0.4.0/nodejs_dev_guide.html
- PHP? here we go: http://dev.teracy.org/docs/0.4.0/php_dev_guide.html
- Ruby? here we go: http://dev.teracy.org/docs/0.4.0/ruby_dev_guide.html
- MySQL? here we go: http://dev.teracy.org/docs/0.4.0/databases_guide.html#mysql
- Git?
- phpMyAdmin?
- ...?

All these components are already available when you setup the `teracy-dev` VM.

If you want to have more, such as:

- Java
- PostgreSQL
- MongoDB
- ...

It's just a few minutes to configure and enable these components to use right away.

We're using `teracy-dev` everyday for all our clients' projects and our internal projects with a
wide range of technology stacks and `teracy-dev` makes our lives (trainees, QA engineers, designers,
developers) easier to collaborate.


Customization
-------------

You could customize `teracy-dev` by overriding the default configuration on the
`vagrant_config.json` file[^3] such as:

- VM customization: networks, synced folders, memory, cpus, etc.
- Enable/ disable or use different versions of `Git`, `Node.js`, `Python`, `Ruby`, `Nginx`, `Apache`,
`PHP`, `MySql`, `MongoDB`, `PostgreSQL`, `Java`, `PHPMyAdmin`, `codebox`.

If you want to have more customization, please follow:
http://dev.teracy.org/docs/0.4.0/teracy_dev_development.html


How To Upgrade
--------------

We support seamless upgrade, these are the steps for upgrading if you're using `teracy-dev` v0.3.5:

```
$ cd ~/teracy-dev
$ git pull
$ vagrant box update
```

`teracy-dev` v0.4.0 introduced a breaking change of configuration for the VM's network[^4],
so you need to adjust it on your `vagrant_config_override.js` if you're overriding it.

Then:

```
$ vagrant destroy
$ vagrant up
```

And you're done.


What's Next?
------------

We're going to back-port some stuff from `teracy-dev` to `teracy-chef` to make it modular so
that everyone could leverage `teracy-chef` to setup their own development environment like we're
doing for `teracy-dev` such as:

- LAMP stack only
- Java stack only
- Ruby stack only
- Node.js stack only
- Ruby stack only

The possibilies are limitless for everyone to create their own baseboxes.

By the next versions of `teracy-chef` and `teracy-dev`, we'll support provisioning the servers
with `knife-solo`[^5].

And we'll also support many different types of operating systems for the base boxes, even with
Windows base boxes.

We can't wait to continue developing and releasing the next versions.


One More Thing...
-----------------

If you want to get our support, consultant or to develop web applications, please drop us an
email at: hq[at]teracy.com to collaborate and get your dreams come true!

Or you could contact us via:

- https://www.upwork.com/companies/Teracy_~01bea4242f6b165592
- https://www.upwork.com/users/~01ae32490908995384


In the meantime, enjoy `teracy-dev` for all your projects and hope that you will love using it as
much as we do.

Let's get started: http://dev.teracy.org/docs/0.4.0/getting_started.html

Happy developing!


[^1]: http://blog.teracy.com/2013/09/23/teracy-chef-v0-1-0-release/
[^2]: http://dev.teracy.org/docs/getting_started.html
[^3]: https://github.com/teracyhq/dev/blob/v0.4.0/vagrant_config.json
[^4]: https://issues.teracy.org/browse/DEV-198
[^5]: http://matschaffer.github.io/knife-solo/
