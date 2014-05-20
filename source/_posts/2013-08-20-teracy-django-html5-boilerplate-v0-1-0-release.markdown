---
layout: post
title: "teracy-django-html5-boilerplate v0.1.0 release"
author: hoatle
date: 2013-08-20 15:44
comments: true
categories:
    - "news"
    - "projects"
tags:
    - "django"
    - "django-html5-boilerplate"
    - "html5-boilerplate"
published: true
---

After more than 3 months since the project was started, today we're very happy to announce
[teracy-django-html5-boilerplate][] v0.1.0 release.

The project mission is to port `html5-boilerplate`[^1] to Django development so that every Django
project could take and use it with ease, flexibility and customization by its needs.

<!-- more -->

This milestone release is just small enough to introduce:

- `base.html` with context variables and blocks that gives much flexibility for customization

- a context processor to handle some fixed settings for context variables so that you don't have to
(re)define it all the time from views.

We're still far from the completed mission, the next version with `v0.2.0` we would like to include
(almost) all the provided assets from `html5-boilerplate` and explore each items for Django
development.

This initial milestone release is stable enough for simple usage, stay tuned with our upcoming
releases. You are all more than welcome to contribute to the project. Please fork it, hack it and
make pull requests!

In the meantime, you could grab it here at https://github.com/teracy-official/django-html5-boilerplate

We also released it to `pypi`[^2] at https://pypi.python.org/pypi/teracy-django-html5-boilerplate

Have a nice day and happy hacking!

[teracy-django-html5-boilerplate]: https://github.com/teracy-official/django-html5-boilerplate

[^1]: http://html5boilerplate.com
[^2]: https://pypi.python.org/pypi

