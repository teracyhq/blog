---
layout: post
title: "teracy-dev vision"
author: hoatle
date: 2016-08-19 16:27
comments: true
categories:
    - "en"
    - "projects"
tags:
    - teracy-dev
    - vision
    - dev
cover:
description: teracy-dev vision
keywords: teracy, teracy-dev, vision, vision statement, VM, vagrant
published: true
---

teracy-dev has been being developed and in use from the first days of Teracy, it's been
about 3 years[^1] now. We're in hurry for a really big, exciting release for the next version of it.
I'd like to take this chance to share with you about teracy-dev vision first and many other new
features and improvements for the next long awaiting teracy-dev release.

<!-- more -->

Let's get started with a story about my first working days as a developer when joining my first
company 8 years ago. As a developer, we're expected that we should have our development environment
ready before starting coding. At that time, my company used Maven to build Java projects and I'm
required to install it. However, as a junior, I had difficulties to install it on the Ubuntu
computer that was provided. I struggled with it for nearly a day and eventually I had to ask for
help to install it successfully. This is a true story. Now I can even install it in just some
minutes with a few lines of commands because I have more experience.

Now just imagine what if juniors don't have to set up these boring tools each by each but just enjoy
coding, that's the more fun part. What if all developers should have the same development environment
even they use different kinds of operating systems so that we don't have to deal with the very common
problem: "But it works on my machine". What if the production environment is easily setup exactly
the same on a developer machine to debug and fix things and vice versa?

These what ifs lead us to use `vagrant` as the base to complete these things as the first days of
Teracy journey. We'd like to upgrade the vagrant dev environment easily, for example, `$ git pull`
then `$ vagrant reload --provision` and you're done. We have default configuration and we could
override it easily. We'd like to use this development environment for all our projects: from our
internal projects to our clients' projects.

We created teracy-dev to solve the mentioned problems above, help boost our productivity and it could
even help us more than that. Everyone just enjoys it, we don't have to deal with installing things
manually, it's auto provided with just one command (`$ vagrant up`) thanks to the provision software.
We're using Chef to provision but we can use others to provision, too, for example Ansible, Puppet, etc.

We see that teracy-dev is so useful for developers, so we'd like to share it, shape its future
together with anyone who wants to work with software. And we envision teracy-dev with the following
statement:

{% blockquote %}
teracy-dev is the best universal development tool for everyone.
{% endblockquote %}


That's our vision for teracy-dev as the base development platform and we're going to make it true.
Note that it should be used for everyone, even with our QA engineers, with our manual testers, with
our employees, with our users as long as they follow exactly a little setup instruction guide.

I believe that everyone should use it as much as we enjoy using and developing it. It's been saving
us and our clients a lot of money as we don't have to spend the time to setup development environment
for each and every project manually.


We improve it day by day though our projects, we listen to our developers, our clients for feedback
on usage and development. However, we still have some problems with it. For example, on Windows, the
file share system is really slow. It's not really lightweight and modular enough to serve every
project's needs.


We know all these problems and we're going to fix these all with the next version by leveraging
Docker and Rsync. We intended to use Docker for long, we expected it should be in use since
teracy-dev v0.4.0 but we failed to make it. Now we promise you that teracy-dev v0.5.0 will leverage
Docker as the core workflow and it will rule the world of developers.

We will add more documentation for usage, accelate the development pace so that you should benefit
from it as we do. We invite everyone to try using it once with
[teracy-dev v0.4.2](http://dev.teracy.org/docs/0.4.2/getting_started.html), it's opensourced and
totally free. You will love it as we do now for 3 years and counting. Let's together make it better
and better and better.

[^1]: http://blog.teracy.com/tags/teracy-dev/
