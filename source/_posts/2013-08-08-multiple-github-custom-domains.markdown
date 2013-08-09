---
layout: post
title: "Multiple Github custom domains"
author: hoatle, phuonglm
date: 2013-08-8 00:00
comments: true
categories:
    - "how-to"
tags:
    - "github"
    - "nginx"
---

Today we're going to share with you the way to use multiple github custom domains as we did with our
`teracy-official` organization account.

As we know, there are two types of github pages: user/ organization pages and project pages [^1].
Our organization account is located at: https://github.com/teracy-official

By default, `http://teracy-official.github.io` will point to `teracy-official.github.io`'s `master`
branch. And `teracy-official.github.io/<project_name>` will point to the project's `gh-pages` branch
if it's available.

With our requirements, we don't want to use `http://teracy-official.github.io` but
`http://teracy.com` and `http://teracy.org` only. That's why we have to setup multiple github custom
domains [^2].

<!-- more -->

1. Problems
-----------

From the very first days, we setup `blog.teracy.com` to map to the organization page at
`teracy-official.github.io` repository. We could get what we want by:

- adding CNAME `blog.teracy.com` with alias `teracy-official.github.io` via DNS manager
- adding CNAME file with 'blog.teracy.com' content to `teracy-official.github.io/tree/master/CNAME`

However, by default, this domain will be used for all other project pages if you don't specify
th project custom domains.

For example, by setting up like above and we have `teracy-dev` project with `gh-pages` branch.
When we access `teracy-official.github.io/teracy-dev`, it will be redirected to
`blog.teracy.com/teracy-dev` project page by github custom domain mechanism, and this was not what
we expected.

We also want `teracy-dev` project page should be served by `http://teracy-dev.teracy.org`, it's also
every easy just configure CNAME and add CNAME file to `gh-pages` branch like we did with the blog
configuration above:

- add CNAME `teracy-dev.teracy.org` with alias `teracy-official.github.io`
- add CNAME file with 'teracy-dev.teracy.org' content to `teracy-dev/tree/gh-pages/CNAME`

Wait for DNS change to be updated and access `teracy-dev.teracy.org`, it should point to
`teracy-dev/tree/gh-pages` site.

There is a minor problem though:
`teracy-official.github.io/teracy-dev` will not be automatically redirected to
http://teracy-dev.teracy.org

If we configure the root domain http://teracy.org to map to `teracy-official.github.io` page,
the link `teracy-official.github.io/teracy-dev` will be redirected to `teracy.org/teracy-dev` by
github custom domain mechanism. With this approach, an issue is raised: it will also introduce more
duplicated links between `teracy-dev.teracy.org` and `teracy.org/teracy-dev`. This duplicated issue
should be avoided.

There is a workaround that you could use JavaScript location checking. However, well, it's not
flexible enough and does not work well with search engines.

So we decided to have a router on `teracy.org` by using `nginx`.


2. Solution with `nginx` server
-------------------------------

2.1. Requirements

Actually, before setting up our custom domains, existing links exists and we have to maintain these
by redirecting. We have these requirement rules:

- By adding 'teracy.org' to teracy-official.github.io/tree/master/CNAME => by github mechanism:

```
teracy-official.github.io/* -> teracy.org/*
```

- Our nginx rules:

```
teracy-official.github.io/teracy-dev/* -> teracy-dev.teracy.org/*

teracy-official.github.io/teracy-official-blog/* -> blog.teracy.com/*
```

- Fix existing links by redirecting as these links are already indexed by search engines:

```
teracy-official.github.io/2013/08/02/teracy-hello-world/ -> blog.teracy.com/2013/08/02/teracy-hello-world/
teracy-official.github.io/2013/08/03/how-to-start-blogging-easily-with-octopress-and-teracy-dev/ -> blog.teracy.com/2013/08/03/how-to-start-blogging-easily-with-octopress-and-teracy-dev/
```


The detailed requirements are at: https://github.com/teracy-official/teracy-official-blog/issues/20

2.2. How to setup and configure `nginx` server

With the above requirement rules, this is how to configure our `nginx` server.

Create a new nginx host file at `/etc/nginx/sites-available/teracy.org` and symlink it to
`/etc/nginx/sites-enable/teracy.org` with the content as below:

```
server {
  listen 80;
  server_name teracy.org;

  location / {
    # redirect to teracy-dev.teracy.org if match below regex
    rewrite  ^/teracy-dev(/.*)?$  http://teracy-dev.teracy.org$1  break;

    # redirect to blog.teracy.com if match below regex
    rewrite  ^/teracy-official-blog(/.*)?$  http://blog.teracy.com$1  break;

    # Otherwise redirect to blog.teracy.com
    rewrite  ^/(.*)$  http://blog.teracy.com/$1  break;
  }
}
```

Just by applying rules from `HttpRewriteModule` [^3], we could solve the problems easily.


That's it. Have a nice day and happy hacking!

P/S: Sure that you can have many other solutions like Apache + Modrewrite, etc., but to us, `nginx`
is more lightweight, simpler and flexible enough. We also use `nginx` to proxy and protect many
other HTTP(S) resources for our projects.

[^1]: https://help.github.com/articles/user-organization-and-project-pages
[^2]: https://help.github.com/articles/setting-up-a-custom-domain-with-pages
[^3]: http://wiki.nginx.org/HttpRewriteModule
