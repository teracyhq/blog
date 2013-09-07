---
layout: post
title: "django-boilerplate v0.1.0 release"
author: hoatle
date: 2013-09-07 14:11
comments: true
categories:
    - "news"
    - "projects"
tags:
    - "django"
    - "django-boilerplate"
cover: /images/2013/09/07/django-logo.png
description: django-boilerplate v0.1.0 release announcement by Teracy
keywords: django, django-boilerplate, v0.1.0 release announcement, Teracy
published: true
---

{% img center /images/2013/09/07/django-logo.png Django Logo %}

Today we're very glad to announce v0.1.0 release of [django-boilerplate][]. The project was started
since May 26, 2013 and after many iterations and improvements, it's good to be shipped as v0.1.0
now.

<!-- more -->

[django-boilerplate] was created to "offers best practices to organize and start any Django
project."

Currently, the project promotes a `django`[^1] project layout that could be used and upgraded
seamlessly. It uses files overlay upgrade strategy, which basically just downloads and overwrites
existing base files. By using this approach, your specific project files will not be affected by
each upgrade.

Moreover, the project also includes coding style checking (`pep8`, `flake8`, `pylint`, `coverage`,
etc.), continuous integration build (`travis-ci`, `jenkins`). For more information, please head to
its README file at https://github.com/teracy-official/django-boilerplate

There are still many things to do, we're hearing feedback from the community and our usage to
iterate for next version (v0.2.0) with improvements, rule violations reduction.


Have a nice day and happy `django` hacking!

[django-boilerplate]: https://github.com/teracy-official/django-boilerplate
[^1]: http://djangoproject.com
