---
layout: post
title: "Keep, share and manage top secret resources with git-encrypt and gitolite"
author: hoatle
date: 2013-08-07 00:00
comments: true
categories:
    - "how-to"
    - "git-encrypt"
    - "gitolite"
---

Recently, we have a problem of top secret resources sharing that we need to resolve. Let me start
by a story.

As a startup of 2 co-founders, we have common top secret resources to be shared with each other.
These common resources include credentials of many services (email, VPS, social networks, etc.),
secret plan, road-map and secret documentation files. And we need to find a way to keep, share and
manage these resources securely.

<!-- more -->

Our requirements include:

- **encryption** is a `must`
- **backup strategy** is a `must`
- **version control** is a `should`
- **keep, share and manage** `easily`

"Encryption" and "version control" requirements lead us to `git-encrypt`[^1], it's not perfect but
it works.

"Backup strategy" requirement leads us to keeping this secret git repository on a VPS, so we decided
to install `gitolite`[^2] on the VPS because with `gitolite`, we could manage the security
layer and git repository permissions more easily, we don't want to mess with linux permissions.
For more details, please head to: http://git-scm.com/book/ch4-8.html

And that's it. Now we could enjoy top secret resources keeping, sharing and managing. It's not the
most secured, but it's secured enough for us.

If you have a better approach, please let us know by commenting.

Happy working and happy securing!

[^1]: https://github.com/shadowhand/git-encrypt
[^2]: http://gitolite.com
