---
layout: post
title: "teracy-django-html5-boilerplate v0.2.0 release"
author: hoatle
date: 2013-09-14 21:29
comments: true
categories:
    - "news"
    - "projects"
tags:
    - "django-html5-boilerplate"
    - "django"
    - "html5-boilerplate"
    - "pylint"
    - "pep8"
    - "nosetests"
cover: /images/2013/09/15/html5-boilerplate.png
description: teracy-django-html5-boilerplate v0.2.0 release announcement
keywords: teracy-django-html5-boilerplate v0.2.0, django, html5-boilerplate
published: true
---

{% img center /images/2013/09/15/html5-boilerplate.png HTML5 Boilerplate %}

It was planned that v0.2.0 would be released by Sep 20th, 2013 and we're very glad to announce
v0.2.0 release 5 days earlier. This release includes many exciting changes.

<!-- more -->

The first exciting change is that (almost) all provided assets from ``html5-boilerplate``[^1] v4.3.0
is included and handled (except `.htaccess` is not included and `404.html` is not handled yet).
All the included resources could be overridden and the instruction is on the project ``README``
file.

The second exciting change is that this release introduces `python` style check with ``pylint``[^2],
``pep8``[^3] violations report and unit test report via ``nosetests``[^4]. These reports help us to
have a better view at the project's health and quality as reported by ``jenkins``[^5] at:
https://ci.teracy.org/job/django-html5-boilerplate-develop/PYTHON=System-CPython-2.7/

The third exciting change is that javascript source code files are included and returned on the page
if the site is running on debug mode with ``debug`` context processor configured. We think that this
is very helpful to debug and fix bugs more easily.

The last but not least exciting change is that we found out and fixed a bug at the last release
minute. It should have been included in v0.1.0 release. It was a mistake from unit tests and not
thorough testing. We learned this lesson very hard and it should not occur anymore.

So what's next? We expect to release v0.3.0 by Nov 15th, 2013 with bug fixed and improvements.
We're very close to v1.0.0 release, the first public production-ready release that we're all
working on.

We hope that this would be helpful to your ``django`` project.

`$ pip install teracy-django-html5-boilerplate` and happy hacking!

[^1]: http://html5boilerplate.com
[^2]: http://www.pylint.org/
[^3]: https://pypi.python.org/pypi/pep8
[^4]: http://nose.readthedocs.org/en/latest/
[^5]: http://jenkins-ci.org/
