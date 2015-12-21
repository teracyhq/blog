---
layout: post
title: "how to use django-celery-email on Heroku"
author: hoatle
date: 2015-12-21 09:40
comments: true
categories:
    - "en"
    - "how-to"
tags:
    - "django"
    - "django-boilerplate"
    - "celery"
    - "django-celery-email"
    - "heroku"
cover: /images/2015/12/21/django_celery.png
description: How to use django-celery-email on Heroku?
keywords: Django, Celery, email, django-celery-email, Heroku, distributed task queue
published: true
---

{% img center /images/2015/12/21/django_celery.png Django Celery %}

When I was asked to use a distributed task queue for emails on a Django project, I chose
django-celery-email. However, during developing and testing, I faced some problems due to the lack
of clear guide from django-celery-email, so I wrote this post as a step by step guide for anyone
who wants use it with much ease. So let's get started!

<!-- more -->

Project Setup
-------------

- You need to setup local development environment with teracy-dev v0.4.2:
http://dev.teracy.org/docs/0.4.2/getting_started.html

- We're going to use https://github.com/teracyhq/django-boilerplate v0.4.0 to develop Django
applications:

```
$ vagrant ssh
$ ws
$ cd personal
$ mkdir django-celery
$ cd django-celery
$ git init
$ git remote add djbp https://github.com/teracyhq/django-boilerplate
$ git fetch djbp
$ git merge djbp/v0.4.0
```

- We need to create a virtual environment for the Django app and to install dependencies:

```
$ mkvirtualenv django-celery
$ pip install -r requirements/dev.txt
```

- Set the required environment variables:

By following http://12factor.net/config, we should `export` the required variables. For development
convenience, .env file is supported and recommeded only for development mode. So let's create .env
file at `django-celery/.env` with the following content:

```
ADMINS=(('<your_name>', '<your_email>'),)
DATABASE_URL=sqlite:///project/data/dj-celery.db
```

`ADMINS` variable is used for testing emails, you should fill in your admins details.

- Run the Django application:

```
$ ./manage.py migrate # migrate for the first time to create db schema creation and migration
$ ./manage.py runserver 0.0.0.0:8000
```

You should see something like this:

```
(django-celery)vagrant@vagrant:~/workspace/personal/django-celery$ ./manage.py runserver 0.0.0.0:8000
Performing system checks...

System check identified no issues (0 silenced).
December 01, 2015 - 13:09:11
Django version 1.8.7, using settings 'settings.project.dev'
Starting development server at http://0.0.0.0:8000/
Quit the server with CONTROL-C.
```

Open http://localhost:8000, you should see the 404 error page and it's expected. We'll add
functionalities for the application by next steps.


Heroku Deployment
-----------------

Let's deploy the Django application on Heroku to apply continuous delivery philosophy.

Make sure you have an account at https://heroku.com

- Install Heroku Toolbelt

```
$ wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
```

- Login

```
$ heroku login
```

- Create a Heroku application

```
$ ws
$ cd personal/django-celery
$ heroku create <your_app_name>
```

- Configure

```
$ heroku config:set DJANGO_SETTINGS_MODULE=project.settings.prod
$ heroku config:set ADMINS="(('<your_name>', '<your_email>'),)"
```

- Deploy

```
$ git push heroku master
$ heroku run python manage.py migrate
```

After that, you should access your deployment app at: https://<your_app_name>.herokuapp.com/

I created `dj-celery` app name and it's availalbe at: https://dj-celery.herokuapp.com/

From now on, to update the deployment on Heroku, we just need to push new commits to the heroku
repository.


django-userena Setup
--------------------

To see how emails work with celery, let's add user management functionalities which should also send
emails for confirming when signing up.

There is already an application for that, it is: `django-userena`.

- Install:

  By following the installation guide at:
  http://django-userena.readthedocs.org/en/latest/installation.html#installing-django-userena and
  adapting to `django-boilerplate`.

  + Add `django-userena>=1.4.1,<1.5.0` to `requirements/project/common.txt`, so we'll use 1.4.x
  versions of `django-userena` like I did at:
  https://github.com/hoatle/django-celery/commit/f153b2940aa1d3432f77fe5e5c5f219775ac071c

  + Install with: `$ pip install -r requirements/dev.txt --upgrade` (`upgrade` here means installing
  and upgrading any outdated packages)

- Configure:

  By following the guide at:
  http://django-userena.readthedocs.org/en/latest/installation.html#required-settings like I did
  at: https://github.com/hoatle/django-celery/commit/bd566a86ff654b69463be649e561800782cd91c9

  There is a migration issue that requires to create apps/userena_patch like I did at:
  https://github.com/hoatle/django-celery/commit/5ef6393aa64a9064aefe399cc07d64e492b2d580

- `makemigrations` for the accounts app:

```
$ ./manage.py makemigrations
```

  Commit the changes like I did at:
  https://github.com/hoatle/django-celery/commit/d306ed4a25b1494a0955f08a8a7aa598fa30b578


- Migrate and Run:

```
$ ./manage.py migrate
$ ./manage.py check_permissions
$ ./manage.py runserver 0.0.0.0:8000
```

You should see the page of http://localhost:8000/accounts/signup now. Let's signup a user and you
should see something similar on the console:

```
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Your signup at localhost.
From: webmaster@localhost
To: sample.user@gmail.com
Date: Mon, 21 Dec 2015 11:02:30 -0000
Message-ID: <20151221110230.23463.80845@vagrant.vm>


Dear hoatle,

Thank you for signing up at localhost.

To activate your account you should click on the link below:

http://localhost:8000/accounts/activate/fe547230a3039c476a127408e9d824894d0a9064/

Thanks for using our site!

Sincerely,
localhost


-------------------------------------------------------------------------------
```


- To deploy Heroku:

Note: we need to set SITE_DOMAIN and SITE_NAME to match the created Heroku application.
These variables are already configured by django-boilerplate by default on development mode.

```
$ heroku config:set SITE_DOMAIN=<your_app_name>.herokuapp.com
$ heroku config:set SITE_NAME=<your_site_name>
$ git push heroku master
$ heroku run python manage.py migrate
$ heroku run python manage.py check_permissions
```

You should see the page of https://<your_app_name>.herokuapp.com/accounts/signup now. However, don't
try to signup on the Heroku app yet because we need to configure the email backend.


SMTP Email Backend Setup
-------------------------

By default, development mode uses console backend and production mode uses SMTP backend for emails.
Let's use SMTP backend for both development mode on localhost and production mode on Heroku.

For easier setup, let's use mailgun addon (free plan) from the Heroku app:
https://elements.heroku.com/addons/mailgun

```
$ heroku addons:create mailgun:starter
```

To see all available variables, use:

```
$ heroku config
```

and you should see something similar to this:

```
=== dj-celery Config Vars
ADMINS:                 (('<your_name>', '<your_email>'),)
DATABASE_URL:           postgres://erdidqkixwegwg:hGZztw2Oh3EmNWfD5IfTb3XcyO@ec2-107-21-224-11.compute-1.amazonaws.com:5432/dembq6s6m1mohq
DJANGO_SETTINGS_MODULE: project.settings.prod
MAILGUN_API_KEY:        key-9587e40f127a1fe8fbab10622be69169
MAILGUN_DOMAIN:         appb8c22c19f6654edeb3c25768d4674002.mailgun.org
MAILGUN_PUBLIC_KEY:     pubkey-51b28300a981d7f184bb55c4726742d8
MAILGUN_SMTP_LOGIN:     postmaster@appb8c22c19f6654edeb3c25768d4674002.mailgun.org
MAILGUN_SMTP_PASSWORD:  f1c39a13079d8db398073fc6717de59a
MAILGUN_SMTP_PORT:      587
MAILGUN_SMTP_SERVER:    smtp.mailgun.org
SITE_DOMAIN:            dj-celery.herokuapp.com
SITE_NAME:              dj-celery
```

We see that `MAILGUN_XXX` variables are provided, we will use it on development
mode by adding the following lines into the .env file from the config content of your app
environment:

```
EMAIL_BACKEND='django.core.mail.backends.smtp.EmailBackend'

MAILGUN_API_KEY=<your_app_environment_value>
MAILGUN_DOMAIN=<your_app_environment_value>
MAILGUN_PUBLIC_KEY=<your_app_environment_value>
MAILGUN_SMTP_LOGIN=<your_app_environment_value>
MAILGUN_SMTP_PASSWORD=<your_app_environment_value>
MAILGUN_SMTP_PORT=<your_app_environment_value>
MAILGUN_SMTP_SERVER=<your_app_environment_value>
```

Let's test if the email works:

```
$ ./manage.py shell

Python 2.7.6 (default, Apr 15 2015, 20:14:49) 
Type "copyright", "credits" or "license" for more information.

IPython 4.0.1 -- An enhanced Interactive Python.
?         -> Introduction and overview of IPython's features.
%quickref -> Quick reference.
help      -> Python's own help system.
object?   -> Details about 'object', use 'object??' for extra details.

In [1]: from django.core import mail

In [2]: mail.mail_admins('test', 'test')

In [3]: 
```

You need to check your mailbox to see that a test email should be sent to you.

Now you could signup and receive email at: https://<your_app_name>.herokuapp.com/accounts/signup/


django-celery-email Setup
-------------------------

If could see that `mail.mail_admins` is blocked and waiting until the email sending is finished.
To avoid these blocking, let's use Celery. Celery app is already setup by django-boilerplate at:
https://github.com/teracyhq/django-boilerplate/commit/7ea4306ae295d38ae35610b0882db1ea81a5d613

Let's just follow https://pypi.python.org/pypi/django-celery-email to configure it like I did at:
https://github.com/hoatle/django-celery/commit/96575fe6fdb746a3f5a8526bbf236864c6880fb6


and then:

```
$ pip install -r requirements/dev.txt --upgrade
```

update EMAIL_BACKEND for .env file with:

```
EMAIL_BACKEND='djcelery_email.backends.CeleryEmailBackend'
```

One important step is to enable Celery by using https://elements.heroku.com/addons/cloudamqp

To use cloudamqp heroku addon:

```
$ heroku addons:create cloudamqp:lemur
```

and you should see `CLOUDAMQP_URL` environment variable by `$ heroku config`

Let's add that variable into the .env file:

```
CLOUDAMQP_URL=<your_app_environment_value>
```

The full .env file I created was at: https://gist.github.com/hoatle/7cb82d437213db4f373d

To start Celery app: `$ ./scripts/celery.sh`, and you should see the following content:

```
 -------------- celery@vagrant v3.1.19 (Cipater)
---- **** ----- 
--- * ***  * -- Linux-3.13.0-49-generic-x86_64-with-debian-wheezy-sid
-- * - **** --- 
- ** ---------- [config]
- ** ---------- .> app:         Project:0x2f9a710
- ** ---------- .> transport:   amqp://ssnipivn:**@jaguar.rmq.cloudamqp.com:5672/ssnipivn
- ** ---------- .> results:     disabled
- *** --- * --- .> concurrency: 2 (prefork)
-- ******* ---- 
--- ***** ----- [queues]
 -------------- .> celery           exchange=celery(direct) key=celery
                

[tasks]
  . djcelery_email_send_multiple

[2015-12-21 12:13:22,788: INFO/Beat] beat: Starting...
[2015-12-21 12:13:24,532: INFO/MainProcess] Connected to amqp://ssnipivn:**@jaguar.rmq.cloudamqp.com:5672/ssnipivn
[2015-12-21 12:13:26,851: INFO/MainProcess] mingle: searching for neighbors
[2015-12-21 12:13:31,216: INFO/MainProcess] mingle: all alone
/home/vagrant/.virtualenvs/django-celery/lib/python2.7/site-packages/celery/fixups/django.py:265: UserWarning: Using settings.DEBUG leads to a memory leak, never use this setting in production environments!
  warnings.warn('Using settings.DEBUG leads to a memory leak, never '

[2015-12-21 12:13:36,019: WARNING/MainProcess] /home/vagrant/.virtualenvs/django-celery/lib/python2.7/site-packages/celery/fixups/django.py:265: UserWarning: Using settings.DEBUG leads to a memory leak, never use this setting in production environments!
  warnings.warn('Using settings.DEBUG leads to a memory leak, never '

[2015-12-21 12:13:36,023: WARNING/MainProcess] celery@vagrant ready.
```


After that, sending test email to admins should work without any blocking by opening a new terminal
window:

```
$ vagrant ssh
$ ws
$ cd personal/django-celery
$ workon django-celery
$ ./manage.py shell

Python 2.7.6 (default, Apr 15 2015, 20:14:49) 
Type "copyright", "credits" or "license" for more information.

IPython 4.0.1 -- An enhanced Interactive Python.
?         -> Introduction and overview of IPython's features.
%quickref -> Quick reference.
help      -> Python's own help system.
object?   -> Details about 'object', use 'object??' for extra details.

In [1]: from django.core import mail

In [2]: mail.mail_admins('test', 'test')
```

That's it. We're done on development mode. Let's deploy on Heroku with:

```
$ git push heroku master
$ heroku ps:scale celery=1
```

`$ heroku logs -p celery` to see the logs of celery, you should see something like this:

```
2015-12-21T12:30:35.946701+00:00 heroku[celery.1]: Starting process with command `scripts/celery.sh`
2015-12-21T12:30:37.616409+00:00 app[celery.1]: /app/.heroku/python/lib/python2.7/site-packages/dotenv.py:53: UserWarning: Not reading /app/.env - it doesn't exist.
2015-12-21T12:30:37.616419+00:00 app[celery.1]:   warnings.warn("Not reading {0} - it doesn't exist.".format(dotenv))
2015-12-21T12:30:38.278350+00:00 app[celery.1]: [2015-12-21 12:30:38,278: INFO/MainProcess] Connected to amqp://ssnipivn:**@jaguar.rmq.cloudamqp.com:5672/ssnipivn
2015-12-21T12:30:38.220898+00:00 app[celery.1]: [2015-12-21 12:30:38,220: WARNING/MainProcess] /app/.heroku/python/lib/python2.7/site-packages/celery/apps/worker.py:161: CDeprecationWarning: 
2015-12-21T12:30:38.220902+00:00 app[celery.1]: Starting from version 3.2 Celery will refuse to accept pickle by default.
2015-12-21T12:30:38.220904+00:00 app[celery.1]: The pickle serializer is a security concern as it may give attackers
2015-12-21T12:30:38.220903+00:00 app[celery.1]: 
2015-12-21T12:30:38.220905+00:00 app[celery.1]: the ability to execute any command.  It's important to secure
2015-12-21T12:30:38.220908+00:00 app[celery.1]: the default choice.
2015-12-21T12:30:38.220907+00:00 app[celery.1]: that enabling pickle should require a deliberate action and not be
2015-12-21T12:30:38.220906+00:00 app[celery.1]: your broker from unauthorized access when using pickle, so we think
2015-12-21T12:30:38.220909+00:00 app[celery.1]: 
2015-12-21T12:30:38.220910+00:00 app[celery.1]: If you depend on pickle then you should set a setting to disable this
2015-12-21T12:30:38.220910+00:00 app[celery.1]: warning and to be sure that everything will continue working
2015-12-21T12:30:38.220914+00:00 app[celery.1]: You must only enable the serializers that you will actually use.
2015-12-21T12:30:38.220913+00:00 app[celery.1]:     CELERY_ACCEPT_CONTENT = ['pickle', 'json', 'msgpack', 'yaml']
2015-12-21T12:30:38.220912+00:00 app[celery.1]: 
2015-12-21T12:30:38.220915+00:00 app[celery.1]: 
2015-12-21T12:30:38.220913+00:00 app[celery.1]: 
2015-12-21T12:30:38.220915+00:00 app[celery.1]: 
2015-12-21T12:30:38.220911+00:00 app[celery.1]: when you upgrade to Celery 3.2::
2015-12-21T12:30:38.220917+00:00 app[celery.1]: 
2015-12-21T12:30:38.223101+00:00 app[celery.1]: ---- **** ----- 
2015-12-21T12:30:38.220916+00:00 app[celery.1]:   warnings.warn(CDeprecationWarning(W_PICKLE_DEPRECATED))
2015-12-21T12:30:38.223104+00:00 app[celery.1]: - ** ---------- .> app:         Project:0x7f590f5fad10
2015-12-21T12:30:38.223107+00:00 app[celery.1]: --- ***** ----- [queues]
2015-12-21T12:30:38.223111+00:00 app[celery.1]:   . djcelery_email_send_multiple
2015-12-21T12:30:38.223102+00:00 app[celery.1]: --- * ***  * -- Linux-3.13.0-66-generic-x86_64-with-debian-jessie-sid
2015-12-21T12:30:38.262153+00:00 app[celery.1]: [2015-12-21 12:30:38,261: INFO/Beat] beat: Starting...
2015-12-21T12:30:38.223098+00:00 app[celery.1]:  
2015-12-21T12:30:38.301313+00:00 app[celery.1]: [2015-12-21 12:30:38,301: INFO/MainProcess] mingle: searching for neighbors
2015-12-21T12:30:38.223105+00:00 app[celery.1]: - ** ---------- .> results:     disabled
2015-12-21T12:30:38.223109+00:00 app[celery.1]:                 
2015-12-21T12:30:38.223100+00:00 app[celery.1]:  -------------- celery@91af8d04-4b15-482e-937b-0f9a49a0eff7 v3.1.19 (Cipater)
2015-12-21T12:30:38.223102+00:00 app[celery.1]: -- * - **** --- 
2015-12-21T12:30:38.223106+00:00 app[celery.1]: - *** --- * --- .> concurrency: 8 (prefork)
2015-12-21T12:30:38.223109+00:00 app[celery.1]: 
2015-12-21T12:30:38.223103+00:00 app[celery.1]: - ** ---------- [config]
2015-12-21T12:30:38.223106+00:00 app[celery.1]: -- ******* ---- 
2015-12-21T12:30:38.223110+00:00 app[celery.1]: [tasks]
2015-12-21T12:30:38.223104+00:00 app[celery.1]: - ** ---------- .> transport:   amqp://ssnipivn:**@jaguar.rmq.cloudamqp.com:5672/ssnipivn
2015-12-21T12:30:38.223108+00:00 app[celery.1]:  -------------- .> celery           exchange=celery(direct) key=celery
2015-12-21T12:30:38.223111+00:00 app[celery.1]: 
2015-12-21T12:30:39.322701+00:00 app[celery.1]: [2015-12-21 12:30:39,322: INFO/MainProcess] mingle: all alone
2015-12-21T12:30:39.352403+00:00 app[celery.1]: [2015-12-21 12:30:39,352: WARNING/MainProcess] celery@91af8d04-4b15-482e-937b-0f9a49a0eff7 ready.
2015-12-21T12:30:36.537615+00:00 heroku[celery.1]: State changed from starting to up
```

You could try sending test emails to admins with:

```
$ heroku run python manage.py shell
Running python manage.py shell on dj-celery... up, run.9412
/app/.heroku/python/lib/python2.7/site-packages/dotenv.py:53: UserWarning: Not reading /app/.env - it doesn't exist.
  warnings.warn("Not reading {0} - it doesn't exist.".format(dotenv))
Python 2.7.10 (default, May 27 2015, 20:38:41) 
[GCC 4.8.2] on linux2
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from django.core import mail
>>> mail.mail_admins('test', 'test')
```

That's it, email sending is not blocked anymore. The full project for this guide is located at:
https://github.com/hoatle/django-celery


Remote Debugging Python Tip
---------------------------

This is a bonus if you need to remote debug Python applications. You could apply this for
Django projects, too: http://dev.teracy.org/docs/develop/python_dev_guide.html#debugging


Summary
-------

In this post, I've guided you step by step to setup Celery as a distributed task queue for emails
on Django projects. It's very easy to set everything up thanks to the django-boilerplate project.

If you need any Django consultant or Django development, don't hesitate to contact us at:
hq@teracy.com and we're very eager to work with you on Django, Python projects.

Happy Django developing!


References
----------

- https://github.com/bread-and-pepper/django-userena
- http://www.celeryproject.org/
- https://pypi.python.org/pypi/django-celery-email
