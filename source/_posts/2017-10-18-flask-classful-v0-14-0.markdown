---
layout: post
title: "flask-classful v0.14.0"
author: hoatle
date: 2017-10-18 04:56
comments: true
categories:
    - en
    - news
    - projects
tags:
    - flask-classful
    - flask
    - python
cover: 
description: flask-classful v0.14.0 release announcement
keywords: flask-classful, flask-classy, v0.14.0, release, announcement
published: true
---

`Flask-Classful` v0.14.0 is the most significant release version yet since we decided to fork `Flask-Classy`
in August 2015 to continue the project development. To be honest, this release also has the most
community contribution yet. I'd like to take this opportunity to thank everyone involved, without
your support and contribution, to release this version is impossible.

<!-- more -->

Community support
-----------------

Thank you [@apiguy](https://github.com/apiguy/) for creating such a beautiful library.

Thank you everyone who contributed to the project since the fork:

```
$ git log 48b7b030f16506e6eea9e217f5aa004b2cf2472f.. --format="%aN <%aE>" --reverse | sort | uniq
Andrew Roberts <adroberts@...>
Chris McNabb <raizyr@...>
Eli Gundry <eligundry@...>
Freedom Dumlao <freedomdumlao@...>
Hayden Chudy <hjc1710@...>
Hoat Le <hoatle@...>
Matt Billenstein <matt@...>
Nick Phillips <nsphilli@...>
Niklas B <niklas@...>
Stephane Rufer <stephane.rufer@...>
blurrcat <blurrcat@...>
hieptq <hieptq8888@...>
slhawkins <slhawkins@...>
```

And thank you [@hjc](https://github.com/hjc) for your helpful feedbacks and accepting
the committer invitation. I hope that we will have more and more committers like you to join the
project.


Thank you to everyone who has been using the library for your everyday projects, creating issues and
feedbacks to make the library better.


What's new?
-----------

So what's new with this release?

We released `Flask-Classful` v0.6.11, v0.7.0, v0.7.1, v0.8.0, v0.9.0, v0.10.0, v0.11.0, v0.12.0,
v0.13.0, v0.13.1 since the fork, but mostly for bug fixes and small improvements.

v0.14.0 introduces a lot of exciting changes that you'd love to use it right away. These are some of
the most exciting changes:

- Type hints support for py3
- `base_class` introduced
- Add options passing to `werkzeug.Routing.Rule` from register function
- Enable using custom decorators in FlaskView
- Should allow specifying excluded methods from becoming routes
- Better representations
- Docker workflow along with teracy-dev for better dev setup

You should check out the changelog and the docs for more detailed information:

- Changelog: https://github.com/teracyhq/flask-classful/blob/develop/CHANGELOG.md#2017-10-05-hoat-le-hoatleteracycom

- Docs: http://flask-classful.teracy.org/


Lessons learned?
----------------

We released v0.14.0 without breaking changes notice and migration docs which hurt our users
from upgrading. From now on, we will avoid introducing breaking changes but should add deprecated
warnings before breaking things for the next version releases.

v0.14.1 is on its way to fix this problem by updating the changelog and docs.

So rest assured and enjoy the release :-).


What's next?
------------

We created a roadmap release for v0.15.0 and we're waiting for the community feedbacks and ideas for
it.

We will add more sample projects, some projects with integration with other
popular libraries to create top-notch REST APIs. If you have such projects to be promoted,
please let us know then.


Enjoy and happy hacking!
