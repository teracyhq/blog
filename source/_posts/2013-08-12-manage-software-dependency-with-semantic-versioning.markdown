---
layout: post
title: "Manage software dependency with semantic versioning"
author: hoatle
date: 2013-08-12 19:42
comments: true
categories:
    - "how-to"
tags:
    - "semver"
published: true
---

Do you know what it means to release your software labeled with `alpha`, `beta`, `release candicate` or
`final release`? When and where to increase the number range? What's the difference between
0.1.0, 1.0.0, 1.2.0 and 2.0.0? We're going to make it clear on this post.

<!-- more -->

Problem
-------

Usually, your software is composed of different small pieces of software libraries and they have
different release schemas. When upgrading these libraries, it's very hard to know if your
software still works normally without reading their APIs documentation, release notes and running
many tests yourself to make sure the upgrading does not break anything and this hurts.

{% blockquote  Tom Preston-Werner http://semver.org/spec/v2.0.0.html Semantic Versioning 2.0.0 %}

In the world of software management there exists a dread place called "dependency hell." The bigger your system grows and the more packages you integrate into your software, the more likely you are to find yourself, one day, in this pit of despair.

In systems with many dependencies, releasing new package versions can quickly become a nightmare.

{% endblockquote %}

Yes, it's true and some software companies I know are still struggling with the problem of dependency
management. I myself had this kind of nightmare many times when working on a big growing software
system with many layers of dependency and that's the reason I really want to improve its development
experience.

Fortunately, `semantic versioning` specification[^1] was introduced and it's general enough to be
applied to other existing dependency management tools and systems:

From ``Java``[^2] world with ``Maven``[^3]

From ``Python``[^4] world with ``setuptools``[^5] and ``pip``[^6] on top of ``setuptools``

From ``Ruby``[^7] world with ``bundler``[^8]

and you name it.

All these kinds of dependency management tools have different kinds of version schemas, we need to
make it more consistent among projects within an organization.

Requirements
------------

As ``sementic versioning`` specification is general enough, it's possible to extend it for more
specific uses. We should have a semantic versioning base that is extensible for different dependency
management tools.

So a ``Base`` must:

- Extend ``semantic versioning``

- Provide a general policy to avoid "incompatible" with existing dependency management tools as much
as possible.

Solution
--------

At Teracy, we try to get all projects to follow a common base semantic versioning policy so that
everything is clear and consistent.

You could have a look at the docs here http://dev.teracy.org/docs/develop/semantic_versioning.html ,
there is still much work left to be done, but it's good enough for ``Python``'s versioning
now.

Summary
-------

This is just an initiative to achieve a common base that is compatible with existing dependency
management tools as much as possible. It will make a developer life easier with a consistent
semantic versioning schema like http://dev.teracy.org/docs/develop/semantic_versioning.html

Have a nice day and happy working!


[^1]: http://semver.org/spec/v2.0.0.html
[^2]: http://www.java.com/
[^3]: http://maven.apache.org/
[^4]: http://python.org/
[^5]: https://pypi.python.org/pypi/setuptools
[^6]: https://pypi.python.org/pypi/pip
[^7]: http://www.ruby-lang.org/
[^8]: http://bundler.io/
