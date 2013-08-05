---
layout: post
title: "How to start blogging easily with octopress and teracy-dev"
author: hoatle
date: "2013-08-03 10:43"
comments: true
categories:
    - "how-to"
    - "octopress"
    - "teracy-dev"
published: true
---

This post will guide you to start blogging with [teracy-dev][] and [octopress][] like we did with
our blog at https://github.com/teracy-official/teracy-official-blog with these outstanding
advantages:

- use `octopress` blogging framework

- could start blogging with any operating systems

- have automatic deployment via travis-ci everytime you update the blog source like our at
https://travis-ci.org/teracy-official/teracy-official-blog

<!-- more -->

In case if you're wondering:

- `teracy-dev` is a little virtual machine (VM) box that any Teraciers must use it to setup working
environment. All the required runtime environment will be automatically setup there.

- `octopress` is "A blogging framework for hackers." I don't think it's for hackers anymore when
you're using `teracy-dev` for blogging, it should be for everyone who knows how to type and a little
bit of `Git` learning. Do you? :-)

`octopress` requires `Ruby` for its runtime environment, `Git` for blog management.
To make it dead-simple and error-prone-free to start, we're going to use `teracy-dev`.

So let's begin now, this could take you a little long time for setting up, and it's worth it,
believe me!


Step 1: Setup `teracy-dev`
--------------------------

Note that before `$ vagrant up` as guided below, you need to enable forwarded-port on `Vagrantfile` to
preview `octopress` blog later (by removing the hash character (`#`) at the beginning of the line):

```ruby Vagrantfile
config.vm.network :forwarded_port, guest: 4000, host: 4000 # octopress preview, disabled by default
```

Please follow the guide here at: http://teracy-official.github.io/teracy-dev/getting_started.html


Step 2: Install `Ruby`
----------------------

Please follow the guide here at: http://teracy-official.github.io/teracy-dev/ruby_training.html#installation

Step 3: Setup `octopress`
-------------------------

1. Note that `Git` and `Ruby` was already installed on the VM.

2. You need to make sure to register a Github account at https://github.com/

3. [**Important**] You must store your repository at `teracy-dev/workspace/personal` directory or you could
possibly loose it when `$ vagrant destroy`. For example, to clone `octopress` repository:

``` bash
$ ws
$ cd personal
$ git clone git://github.com/imathis/octopress.git octopress
```

`$ ws` is an alias provided by `teracy-dev` to change directory to `workspace` directory where all
your work must be kept there.

4. Please follow the official guide here at: http://octopress.org/docs/setup/ and make sure to
deploy with *Github Pages*.

5. Preview

**Note**: To `preview` with ``$ rake preview`` you should enable forwarded-port on the VM mentioned
above.

`$ rake preview` and open your browser at: http://localhost:4000 to preview the `octopress` blog.

After that, you could starting to blog and enjoy it now. However, one very cool thing is that you
don't have to `$ rake generate` and then `$ rake deploy` anymore, it should be automatically
done when you `push` updates to your github repository like we did for Teracy's official blog.

Step 4: Automatic deployment with travis-ci
-------------------------------------------

1. You need to register travis-ci account at: http://travis-ci.org

2. Configure your project build

2.1. Install `curl` with:

``` bash install curl
$ sudo apt-get install curl
```

2.2. Provide your github user account and run the following command, for example, my account is `hoatle`:

``` bash get token
$ curl -u 'hoatle' -d '{"scopes":["public_repo"], "note":"Travis access"}' https://api.github.com/authorizations
```

You could get the output something like this, you need to notice the "token" key:

``` bash output
Enter host password for user 'hoatle':
{
  "id": 3223760,
  "url": "https://api.github.com/authorizations/3223760",
  "app": {
    "name": "Travis access (API)",
    "url": "http://developer.github.com/v3/oauth/#oauth-authorizations-api",
    "client_id": "66c370cb34ce199ab76a"
  },
  "token": "1cbbaf4dd0b82c54006377b233ee528612345678",
  "note": "Travis access",
  "note_url": null,
  "created_at": "2013-08-03T05:47:39Z",
  "updated_at": "2013-08-03T05:47:39Z",
  "scopes": [
    "public_repo"
  ]
}
```

2.3. Install `travis` gem to generate "secure" key:

``` bash
$ gem install travis
$ rbenv rehash
```

2.3. Generate "secure" key from your provided token, mine is something like:

``` bash
$ travis encrypt GH_TOKEN=1cbbaf4dd0b82c54006377b233ee528612345678
```

And you will get the output something like below, you need to get "secure" key to configure travis-ci
later.

``` bash
Please add the following to your .travis.yml file:

  secure: "f+g8tyvZYOYm+jUARCD5qLNMFkslYu26PwAFe8s4VzngJ2iv37T0yj5d8R40/cLIQ6LX+nHAltuJeNK786qjtiIuKuvHAypL0/3ZgVSN9XZAKnVvwh7fz7W7bETrJDkyk1WVSTini37CLSIdDS8lBg4iKHAhSuD35FZviuf/CbY="

Pro Tip: You can add it automatically by running with --add.
```

2.4. Configure `.travis.yml` like I did at
https://github.com/teracy-official/teracy-official-blog/commit/263f79000b4fa3665ce704b502b5ddf5db25e88c#diff-1

You need to replace these with yours accordingly:

    - git config --global user.name "Hoat Le"
    - git config --global user.email "hoatlevan @ gmail . com"

    - GH_REPO="teracy-official/teracy-official.github.io"
    - secure: "f+g8tyvZYOYm+jUARCD5qLNMFkslYu26PwAFe8s4VzngJ2iv37T0yj5d8R40/cLIQ6LX+nHAltuJeNK786qjtiIuKuvHAypL0/3ZgVSN9XZAKnVvwh7fz7W7bETrJDkyk1WVSTini37CLSIdDS8lBg4iKHAhSuD35FZviuf/CbY="

If you setup blog as user/ organization page, you need to enable `source` branch instead of `master`
like mine.

2.5. Configure `Rakefile` like I did at
https://github.com/teracy-official/teracy-official-blog/commit/263f79000b4fa3665ce704b502b5ddf5db25e88c#diff-2


3\. Finally, enable travis-ci build for your project.

You should make a post, `push` the change to see how travis-ci works.
Your blog should be running well now.

Github custom domain
--------------------

There are two types of github pages: user/ organization pages and project pages.

You should only use user/ organization pages with root domain only, don't use it with sub domain.

Before, we set up `blog.teracy.com` to map to the organization page at `teracy-official.github.io`
repository. We could get what we want by:

- adding CNAME `blog.teracy.com` with alias `teracy-official.github.io` via DNS manager (cloudflare)
- adding CNAME file with 'blog.teracy.com' content to `teracy-official.github.io/tree/master/CNAME`

However, by default, this domain will be used for all other project pages if you don't specify
your projects sub domains.

For example, by setting up like above, we have `teracy-dev` project with `gh-pages` branch.

When we access `teracy-official.github.io/teracy-dev`, it will be redirected to
`blog.teracy.com/teracy-dev` by github custom domain mechanism, and this was not what we expected.
We don't think you would, too.

That's the reason why we moved the organization page to project page and it works well now, it gives
us much more flexibility.

We want `teracy-dev` project page should be served by
http://teracy-dev.teracy.org, it's so easy just configure CNAME and add CNAME file to `gh-pages`
branch like I did with the blog configuration above:

- add CNAME `teracy-dev.teracy.org` with alias `teracy-official.github.io`
- add CNAME file with 'teracy-dev.teracy.org' content to `teracy-dev/tree/gh-pages/CNAME`

There is a minor problem though:
`teracy-official.github.io/teracy-dev` will not automatically redirected to
http://teracy-dev.teracy.org

If we configure the root domain http://teracy.org to map to `teracy-official.github.io` page,
the link `teracy-official.github.io/teracy-dev` will be redirected to
`teracy.org/teracy-dev` by github custom domain mechanism. This is somehow better to use all
your custom domains. With this approach, an issue is raised: it will also introduce more duplicated
links for `teracy.org` that should be avoided, don't ever break existing links with 404 pages. Don't
introduce new ones that you can't maintain or later you must do redirect.

We're figuring out if we could make `teracy-official.github.io/teracy-dev` will be redirected
to http://teracy-dev.teracy.org Do you know how? Please let us know by commenting.

If you find this post useful to setup your blog or there is anything missing here, please let me
know by commenting, too.

Many thanks to:

- http://rogerz.github.io/blog/2013/02/21/prose-io-github-travis-ci/ for automatic
deployment work.

- http://www.harimenon.com/blog/2013/01/27/auto-deploying-to-my-octopress-blog/ for twitter button
fixing.

Happy blogging!

[teracy-dev]: https://github.com/teracy-official/teracy-dev "teracy-dev"
[octopress]: http://octopress.org "octopress"