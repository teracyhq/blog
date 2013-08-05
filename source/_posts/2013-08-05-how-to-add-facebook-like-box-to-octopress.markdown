---
layout: post
title: "How to add Facebook like-box to octopress"
author: hoatle
date: 2013-08-05 02:48
comments: true
categories:
    - "how-to"
    - "octopress-facebook-like-box"
    - "octopress"
published: true
---

We've just added the Facebook like-box to the default asides as you could see it on the right
sidebar and we want to share the way to do the same for your `octopress` blog.

There is an existing plugin at https://github.com/geetotes/octopress-facebook-likebox introduced by
https://github.com/imathis/octopress/wiki/3rd-party-plugins that does the work, however, we don't
think that plugin approach meets our requirements from our [development philosophy][].

- We want to adhere with existing octopress conventions of plugins management
- We want to avoid manual configuration
- We want to avoid any conflict as much as possible
- We want to upgrade the plugin seamlessly
- Friendly `Git` and command lines.

That is the reason why we created [octopress-facebook-like-box] that meets our requirements.

To install and configure the plugin, please see instruction from README.md at
https://github.com/hoatle/octopress-facebook-like-box

If you want to improve anything, please let us know by commenting on this post or create a new issue
at https://github.com/hoatle/octopress-facebook-like-box/issues or fork the project, hack and make a
pull request, your contributions are all welcome.

Happy hacking and happy blogging!

[development philosophy]: http://teracy-dev.teracy.org/intro.html#join-and-work-with-us
[octopress-facebook-like-box]: https://github.com/hoatle/octopress-facebook-like-box