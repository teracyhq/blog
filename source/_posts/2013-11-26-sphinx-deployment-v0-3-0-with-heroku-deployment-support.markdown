---
layout: post
title: "sphinx-deployment v0.3.0 with heroku deployment support"
author: hoatle
date: 2013-11-26 09:06
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
    - "readthedocs"
    - "sphinx-live-view"
cover: /images/sphinx.png
description: sphinx-deployment v0.3.0 release with heroku deployment support
keywords: "teracy, sphinx-deployment, v0.3.0, release, heroku support, announcement"
published: true
---


{% img center /images/sphinx.png Sphinx Doc Logo %}

After v0.2.0 release[^1] of [sphinx-deployment][], we're making it better with heroku[^2] deployment
support for v0.3.0 release. This release introduces some breaking changes and you should know to
upgrade successfully.

<!-- more -->

[sphinx-deployment][] is in active development phase and breaking changes are expected (you know,
it's still v0.3.0).

Simplicity is one of our [development philosophy][], and you could see it clearly with our following
supported commands for [sphinx-deployment][].

Supported Commands
------------------

**1. `$ make generate`**

For generating contents, alias for `$ make html`

**2. `$ make deploy`**

For short-cut deployment, it could be `$ make deploy_gh_pages`, `$ make deploy_rsync` or
`$ make deploy_heroku` basing on the configuration of `DEPLOY_DEFAULT`.

**3. `$ make gen_deploy`**

For short-cut generation and deployment: `$ make generate` and then `$ make deploy`.


Basically, you just need to know 3 commands above after some settings (with a little configuration
and setting up). Until now sphinx-deployment supports github pages[^3] deployment, rsync[^4]
deployment and heroku deployment.

Before setting up, you need to install and configure [sphinx-deployment][] first, and then:

**4. `$ make setup_gh_pages`**

For the first time only to create `$(DEPLOY_DIR)` to track `$(DEPLOY_BRANCH)`. This is used for
github pages deployment.


**5. `$ make setup_heroku`**

For the first time only to create `$(DEPLOY_DIR_HEROKU` to track the heroku repo's master branch.
This is used for heroku deployment.

After setting up, you could deploy the docs easily with:

**6. `$ make deploy_gh_pages`**

For deploying with github pages only.

**7. `$ make deploy_rsync`**

For deploying with rsync only.

**8. `$ make deploy_heroku`**

For deploying with heroku only.

That's it, very easy to use. This is the first ultimate simple sphinx docs deployment solution
provided so far, we hope that you love it as much as we love developing and using it.


Migration
---------

Are you using v0.2.0 and want to upgrade? Just install it normally with `spxd.sh` bash script and
adjust a little the configuration with the following migration instruction:

- Migration (from v0.2.0 to v0.3.0)
    + `REPO_URL` was changed to `REPO_URL_GITHUB`
    + `DEPLOY_BRANCH` was changed to `DEPLOY_BRANCH_GITHUB`
    + `$ make push` was changed to `$ make deploy_gh_pages`
    + `$ make rsync` was changed to `$ make deploy_rsync`

What's Next?
------------

The next version we would like to introduce i18n feature and stabilize the project with improvements, bug fixes. Moreover,
we're starting sphinx-live-view project for easier docs writing, too. Stay tuned for our
upcoming exciting features and projects.

Have a nice day and happy docs writing!

P/S: Remember to head to [sphinx-deployment][] and read README for usage instruction.

[sphinx-deployment]: https://github.com/teracy-official/sphinx-deployment
[development philosophy]: http://dev.teracy.org/docs/intro.html#about-teracy
[^1]: http://blog.teracy.com/2013/09/25/sphinx-deployment-v0-2-0-release/
[^2]: http://heroku.com
[^3]: https://help.github.com/categories/20/articles
[^4]: http://en.wikipedia.org/wiki/Rsync
[^5]: https://readthedocs.org/
