teracy-official-blog
====================

Teracy's official blog at http://blog.teracy.com


How to start
------------

Follow the instruction here at
http://blog.teracy.com/2013/08/03/how-to-start-blogging-easily-with-octopress-and-teracy-dev/

Instead of cloning `octopress` repository, fork this repository into your github account and
clone it into your personal workspace.

1. Fork this repository into your github account

2. Clone your forked repository into your `workspace/personal` directory:

``` bash
$ ws
$ cd personal
$ git clone <your_forked_repository_here>
```

How to run blog on teracy-dev vagrant box
-----------------------------------------

1. Setup dev VM like this: http://dev.teracy.org/docs/getting_started.html

2. Install dependency, clone this repository and preview

After `$ vagrant ssh`:

2.1. Install with `bundle`

Installs this for the first time only

```
$ ws
$ git clone <repo_url>
$ cd personal/blog
$ bundle install
```

2.2. Preview blog

```
$ ws
$ cd personal/blog
$ rake preview
```

You should see something like this:

```
Starting to watch source with Jekyll and Compass. Starting Rack on port 4000
[2014-12-10 10:31:54] INFO  WEBrick 1.3.1
[2014-12-10 10:31:54] INFO  ruby 1.9.3 (2012-04-20) [i686-linux]
[2014-12-10 10:31:54] INFO  WEBrick::HTTPServer#start: pid=20200 port=4000
Configuration from /home/vagrant/workspace/personal/spec-int/_config.yml
Auto-regenerating enabled: source -> public
[2013-11-04 10:31:56] regeneration: 186 files changed
>>> Change detected at 10:31:58 to: screen.scss
identical public/stylesheets/screen.css

Dear developers making use of FSSM in your projects,
FSSM is essentially dead at this point. Further development will
be taking place in the new shared guard/listen project. Please
let us know if you need help transitioning! ^_^b
- Travis Tilley

>>> Compass is polling for changes. Press Ctrl-C to Stop.
```

Now, open http://localhost:4000 to see the blog.

Note that sometimes the content was cached, you need to stop the preview (Cmd/Ctrl + c) then
`$ rake generate` and `$ rake preview` again.

3. Learn more at http://octopress.org/docs/


Blog post structure guide
-------------------------

```
The hook part: some introduction text to get interest from others to click.

This hook part is usually used for sharing the blog post so make it short and interesting enough for
readers to continue reading.

Problem
-------

Tell the story, mention the concern, problem.

Requirements
------------

Any requirements to solve the problem.

- requirement 1
- requirmement 2

Solution
--------

How to solve the problem steps by steps

**1. Step 1**

**2. Step 2**

2.1. Step 2.1

2.2. Step 2.2

- list item 1

- list item 2

**3. Step 3**

Summary
-------

Summary of the blog post.

```
