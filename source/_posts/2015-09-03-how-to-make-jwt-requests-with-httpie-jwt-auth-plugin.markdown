---
layout: post
title: "how to make JWT requests with httpie-jwt-auth plugin?"
author: hoatle
date: 2015-09-03 11:33
comments: true
categories:
    - "en"
    - "projects"
tags:
    - "httpie"
    - "httpie-jwt-auth"
    - "jwt"
cover:
description: how to make JWT requests with httpie-jwt-auth plugin?
keywords: http request, httpie, JWT, Json Web Tokens, httpie-jwt-auth plugin
published: true
---

At Teracy, we embrace JWT (JSON Web Tokens)[^1]  for REST APIs to make secure requests. Just for
your information: "JSON Web Tokens are an open, industry standard RFC 7519 method for representing
claims securely between two parties".


<!-- more -->

We're using JWT for our REST APIs basing on the flask-boilerplate[^2] project that are empowering
our clients' web applications and our internal projects.

And to test REST APIs, we're using a really simple powerful http client called httpie[^3] .

To make a JWT request with `httpie`, you need to use the following command:

```
$ http example.org Authorization:'Bearer jwt_token_here'
```

Hower, typing `Authorization` with the exact value format is a bit hard and error-prone, that's the
reason why we created [httpie-jwt-auth][] plugin with the first v0.1.0 release. After installing
`httpie-jwt-auth`, you could use this instead:

```
$ http --auth-type=jwt --auth=jwt_token_here: example.org
```

That's it. It's really easy to use for any JWT requests with `httpie`.

Please note that colon character at the end of `jwt_token_here`, we're going to work on removing
the redundant colon character with: https://github.com/teracyhq/httpie-jwt-auth/issues/3

Hope that you'll like it and use it as much as we do.

Happy developing and debugging!


[^1]: http://jwt.io/
[^2]: https://github.com/teracyhq/flask-boilerplate
[^3]: https://github.com/jkbrzt/httpie
[httpie-jwt-auth]: https://github.com/teracyhq/httpie-jwt-auth
