---
layout: post
title: "Teracy happy birthday robot"
author: phuonglm
date: 2015-07-22 09:19
comments: true
categories:
    - "projects"
tags:
    - "devops"
cover:
description:
keywords:
published: true
---

Get the things automate is one of my daily task. Run the test every times have new commit, package product and send to customer or deploy to test/product server when project manager release new version... 

<!-- more -->

Today my task is something quite difference: Congrats on team member on their birthday by automatically with the data get from Google calendar. After a little search there are many automation solution to do it: From commercial Zapier, IFFT to opensource like Huginn.
Because I want something simple to use, maintenance free, free for small usage is the best so the last choice is Zapier. It’s already have the recipe[^1] to read event from Google calendar and another action[^1] to interactive with Slack that would be easy to start ( although the document of the recipe not quite clear for new user like me ). Here is the recipe for Zapier:

{% img center /images/2015/07/22/Zapier_recipe_config.png Zapier recipe config %}

With this recipe Zapier will notification to #_general channel with the message get from calendar description at the time event start. To make thing more interesting, I want to attach a birthday cake image which have employee name on it along with the message so I use PHP GD to show of a dynamic birthday cake take employee name from calendar title and add it to image. It' take me 30 mins to download birthday cake which have space for the text, choice a font and add it to my script. Upload it to our server and volia here is the result: 

{% img center /images/2015/07/22/cake_sample.png Birthday cake %}

This PHP script along with Zapier recipe above that make birthday reminder more interesting. What i'm thinking now is some fun fortune teller text which add randomly to the cake, a lucky draw game for employee pick-up their birthday gift and hopefully some online merchant would open their API for our script bring the gift to our employee home.

[^1]: https://zapier.com/zapbook/google-calendar/slack/

