---
layout: post
title: "teracy-chef v0.1.0 release"
author: hoatle
date: 2013-09-23 02:30
comments: true
categories:
    - "news"
    - "projects"
tags:
    - "teracy-chef"
    - "chef"
    - "vagrant"
    - "tdd"
    - "devops"
    - "teracy-dev"
cover: /images/2013/09/23/chef-logo.png
description: teracy-chef v0.1.0 release announcement
keywords: "teracy, teracy-chef, v0.1.0, release, vagrant"
published: true
---

{% img center /images/2013/09/23/chef-logo.png Chef Logo %}

"automation" is one of the most important `Teracy development philosophies`[^1] and [teracy-chef][]
is one small step for us to automate all our infrastructure services, development experience and
other services later.

Today we're very happy to announce v0.1.0 release of [teracy-chef][].

<!-- more -->

[teracy-chef][] is a "base common project that other chef-specific projects should extend."
It includes all common stuff (rake tasks, project layout management, etc.) that is easy to use
right away. Moreover, it includes test-driven development with `Chef`[^2] thanks to
`Chef best practices`[^3].

By using this base common project, we're going to extend it for `teracy-dev`[^4] to improve it to
a next level.

We hope that this could be useful to you as it is to us. There are many rooms for its improvements,
though.

Have a nice day and happy hacking!

[teracy-chef]: https://code.teracy.org/projects/CHEF/repos/chef/browse
[^1]: http://dev.teracy.org/docs/develop/intro.html#about-teracy
[^2]: http://www.opscode.com/chef/
[^3]: http://neverstopbuilding.net/chef-best-practices-a-series/
[^4]: https://github.com/teracy-official/dev
