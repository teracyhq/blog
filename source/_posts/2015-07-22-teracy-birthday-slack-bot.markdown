---
layout: post
title: "Teracy happy birthday Slack bot"
author: phuonglm
date: 2015-07-22 09:19
comments: true
categories:
    - "en"
    - "projects"
tags:
    - "devops"
cover: /images/2015/07/22/teracy_birthday_slack_bot.png
description: Teracy happy birthday Slack bot
keywords: teracy, slack, happly birthday, bot
published: true
---

{% img center /images/2015/07/22/teracy_birthday_slack_bot.png Teracy happy birthday Slack bot %}

Getting everything automated is one of my daily tasks, such as running tests automatically each time
there is a new commit, packaging products and sending them to customers, or deploying the
staging/ production servers when a project manager releases a new version, and more.



<!-- more -->

Today my task is something quite different: Congrats team members on their birthdays automatically
by the data got from Google calendar. After a little search, there are many automation solutions to
do it: from commercial Zapier, IFFT to opensource like Huginn.
I want something simple to use, maintenance-free, and free for small usage, so my last
choice is Zapier. It has already had the recipe[^1] to read events from Google calendar and another
action to interactive with Slack that will be easy to start (although the document of the recipe
is not quite clear for a new user like me). Here is the recipe for Zapier:

{% img center /images/2015/07/22/Zapier_recipe_config.png Zapier recipe config %}

With this recipe, Zapier will notify to the #_general slack channel with the message got from the
calendar description at the time of the event start. To make thing more interesting, I want to
attach a birthday cake image which has an employee name on it along with the message so I use PHP GD
to show a dynamic birthday cake taking the employee name from the calendar title and add it to the
image. It took me 30 minutes to get the birthday cake image which has space for the text, choose a
font and add it to my script. Finally, uploading it to our server and here is the result:

{% img center /images/2015/07/22/cake_sample.png Birthday cake %}

This PHP script[^2] along with the Zapier recipe above makes the birthday reminder more interesting.
What I'm thinking now is some funny fortune teller texts which are added randomly to the cake, a
lucky draw game for the team members to pick up their birthday gift and hopefully some online
merchants will open their API for our script to bring the gift to our team members' homes.

[^1]: https://zapier.com/zapbook/google-calendar/slack/
[^2]: https://github.com/teracyhq/birthday-image
