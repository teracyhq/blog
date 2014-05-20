---
layout: post
title: "Automatic sphinx docs deployment with sphinx-deployment"
author: hoatle
date: 2013-08-09 03:13
comments: true
categories:
    - "how-to"
    - "projects"
tags:
    - "sphinx"
    - "sphinx-deployment"
    - "github"
    - "rsync"
    - "travis-ci"
    - "devops"
published: true
---

At Teracy, all our documentations are written with the help from `sphinx`[^1]. It's easy to setup and
manage. However, we could not find a good enough **deployment solution** for `sphinx` documentation
project. What does "good enough" here means? It means:

- The installation and configuration should be easy with `git` and command line.

- The deployment could be "decoupled" from `sphinx` project for easy upgrade and maintenance. It's
  better if we could have this deployment solution provided by `sphinx` out of the box.

- The deployment should support as many services as possible: `github pages` [^2], `Rsync`[^3], and
`PaaS`[^4] services like `heroku`[^5], etc.

- The usage should be easy like:

    + `$ make setup` to setup deployment basing on the configurations
    + `$ make generate` to generate content basing on the configurations
    + `$ make deploy` to deploy the project basing on the configurations

<!-- more -->

We could not find a solution good enough meeting our requirements, so we created
[sphinx-deployment][] project that implements the ideas and requirements above.

Currently, it's on very very early development stage to just
support deployment on `github pages` automatically with `travis-ci`[^6], and
https://travis-ci.org/teracy-official/dev as an example.

There are many things that we need to do, please help use to shape the project's future by
contributing with `forking`, `hacking` and `pull requests` or giving your ideas. Your contributions
are all welcome. Please head to the development branch at
https://github.com/teracy-official/sphinx-deployment/tree/develop

Have a nice day and happy hacking!

[^1]: http://sphinx-doc.org
[^2]: https://help.github.com/categories/20/articles
[^3]: http://en.wikipedia.org/wiki/Rsync
[^4]: http://en.wikipedia.org/wiki/Platform_as_a_service
[^5]: http://heroku.com
[^6]: http://travis-ci.org
[sphinx-deployment]: https://github.com/teracy-official/sphinx-deployment
