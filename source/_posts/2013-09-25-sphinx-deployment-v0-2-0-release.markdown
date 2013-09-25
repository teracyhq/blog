---
layout: post
title: "sphinx-deployment v0.2.0 release"
author: hoatle
date: 2013-09-25 20:56
comments: true
categories:
    - "news"
    - "projects"
tags:
    - "sphinx-deployment"
    - "sphinx"
    - "rsync"
    - "github"
    - "heroku"
cover: /images/sphinx.png
description: sphinx-deployment v0.2.0 release announcement
keywords: "teracy, sphinx-deployment, v0.2.0, release, announcement"
published: true
---

{% img center /images/sphinx.png Sphinx Doc Logo %}

After v0.1.0 release[^1] of [sphinx-deployment][], we're making it better with improvements and new
features for v0.2.0 release.

<!-- more -->

This release version includes an improvement and a new feature.

We improved [sphinx-deployment][] by removing the duplication of git initialize step when
`$ make setup_gh_pages`, this will reduce the time for setting up github pages to some mili-seconds,
so it could be considered as performance improvement.

We also would like to introduce a new feature that supports `Rsync`[^2] deployment out of the box.
So by now, you could not only automatically deploy the `sphinx` docs project with Github Pages, but
you could also automatically deploy it with `Rsync`.

`sphinx` deployment is never easy like this, please head to [sphinx-deployment] project, then read
the introductions on `README` file and you're done.

And what's next? For v0.3.0 release, we plan to support as many PaaS services as possible,
the first one on the list is `heroku`. So stay tuned with our upcoming releases!

Have a nice day and happy docs writing!

[sphinx-deployment]: https://github.com/teracy-official/sphinx-deployment
[^1]: http://blog.teracy.com/2013/08/18/sphinx-deployment-v0-1-0-release/
[^2]: http://en.wikipedia.org/wiki/Rsync
