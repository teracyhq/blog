---
layout: post
title: "A separated Django application with unit tests, coding convention checking and coverage report"
author: hoatle
date: 2013-08-06 10:48
comments: true
categories:
    - "how-to"
    - "projects"
tags:
    - "Django"
    - "flake8"
    - "coverage"
    - "django-discover-runner"
    - "teracy-html5boilerplate"
    - "travis-ci"
    - "pip"
    - "setuptools"
    - "PEP 8"
    - "TDD"
---

Today we're going to share with you how to create a separated Django application with the following
requirements:

- must be a separated Django application for easier packaging and distribution.
- must be tested like it was tested within a Django project for the same development experience
whether the application is within a Django application or a separated one.
- must have test coverage report to check the quality of project.
- must have coding convention checking for consistent style and best practices.
- must be built by travis-ci (or other ci system).

<!-- more -->

And we managed to meets these requirements with [teracy-html5boilerplate][] project.
Well, [teracy-html5boilerplate][] is just a simple Django application wrapper for
`HTML5 Boilerplate`[^9] so that you could extend and reuse it on your Django project with much ease,
fun and:

- yes, it's a separated Django application, could be easily installed with `pip`[^1] or
`setuptools`[^2].
- yes, it was setup to be tested with the help from `django-discover-runner`[^3].
- yes, it was setup to have test coverage report with the help from `coverage`[^4].
- yes, it was setup to have coding convention checking (`PEP 8`[^5] and more) with the help from
`flake8`[^6].
- yes, it was setup to be automatically built with the help from `travis-ci`[^7]. The build page
is here at: https://travis-ci.org/teracy-official/teracy-html5boilerplate

One feature that we really love from the ci system is that whenever a pull request is made, we
could see the build status immediately within that pull request thanks to the integration of
`travis-ci` and `github`. You could see a failed pull request here as an example:
https://github.com/teracy-official/teracy-html5boilerplate/pull/3

At Teracy, we're going to promote best development practices that we use every day, one of these is
`Test Driven Development`[^8] practice: "Test first, implement later, then refactor". The pull
request just contain tests without any implementation, that's why its build status was failed:
https://github.com/teracy-official/teracy-html5boilerplate/pull/3

All the setup work was done on the project repository, please take a look and we believe that you
could setup yourself a similar `Django` application easily from this sample project.

If there is anything missing that you could not setup yourself a project like this or you have a
better approach, please let us know by commenting or forking the project, creating issues,
making pull requests.

Have a nice day and happy hacking!

[teracy-html5boilerplate]: https://github.com/teracy-official/teracy-html5boilerplate
[^1]: https://pypi.python.org/pypi/pip
[^2]: https://pypi.python.org/pypi/setuptools
[^3]: https://github.com/jezdez/django-discover-runner
[^4]: https://pypi.python.org/pypi/coverage
[^5]: http://www.python.org/dev/peps/pep-0008/
[^6]: https://pypi.python.org/pypi/flake8
[^7]: https://travis-ci.org/
[^8]: http://www.agiledata.org/essays/tdd.html
[^9]: http://html5boilerplate.com/
