---
layout: post
title: "How to add Facebook like-box to octopress"
author: hoatle
date: 2013-08-05 02:48
comments: true
categories:
    - "how-to"
    - "projects"
tags:
    - "octopress-facebook-like-box"
    - "octopress"
published: true
---

We've just added the Facebook like-box to the default asides as you could see it on the right
sidebar and we want to share the way to do the same for your `octopress` blog.

By the way, you should like our Facebook page to see how it works and to get news about us :).

There is an existing plugin at https://github.com/geetotes/octopress-facebook-likebox introduced by
https://github.com/imathis/octopress/wiki/3rd-party-plugins that does the work, however, we don't
think that plugin approach meets our requirements from our [development philosophy][].

<!-- more -->

- We want to adhere with existing octopress conventions of plugins management
- We want to avoid manual configuration
- We want to avoid any conflict as much as possible
- We want to upgrade the plugin seamlessly
- We want to do friendly `Git` and command lines.

That is the reason why we created [octopress-facebook-like-box] that meets our requirements.

To install and configure the plugin, please see instruction from README.md at
https://github.com/hoatle/octopress-facebook-like-box

These are the detailed steps carried out for this blog:

- Merging: https://github.com/teracy-official/teracy-official-blog/commit/8f0da04d6366701b7c363b6792e8c74e9a9590df
- Installing: https://github.com/teracy-official/teracy-official-blog/commit/218149037da3857a4af2bb3f9c9106ec29544206
- Configuring: https://github.com/teracy-official/teracy-official-blog/commit/c4aadab5f7f035bc4604406b2a8686430f3d4989

If you haven't tried `octopress` yet, we had a guide for you to get started with so much fun and ease
at: http://blog.teracy.com/2013/08/03/how-to-start-blogging-easily-with-octopress-and-teracy-dev/

If you want to improve anything, please let us know by commenting on this post or create a new issue
at https://github.com/hoatle/octopress-facebook-like-box/issues or fork the project, hack and make a
pull request, your contributions are all welcome.

Happy hacking and happy blogging!

[development philosophy]: http://dev.teracy.org/docs/intro.html#join-and-work-with-us
[octopress-facebook-like-box]: https://github.com/hoatle/octopress-facebook-like-box
