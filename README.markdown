# teracy-blog

Teracy's official blog at http://blog.teracy.com


## How to start

Follow the instruction here at
http://blog.teracy.com/2013/08/03/how-to-start-blogging-easily-with-octopress-and-teracy-dev/

Instead of cloning `octopress` repository, fork this repository into your github account and
clone it into your personal workspace.

### 1. Fork this repository into your github account

### 2. Clone your forked repository into your `~/teracy-dev/workspace/` directory:

  ``` bash
  $ mkdir -p ~/teracy-dev/workspace/
  $ cd ~/teracy-dev/workspace/
  $ git clone <your_forked_repository_here> teracy-blog
  $ cd teracy-blog
  ```
### 3. Run with Docker

#### 3.1. How to run blog with Docker in dev mode

First you must have docker and docker-compose in your machine.

Update your content and use the follow commands to generate and preview the blog.

##### On Linux

```
$ docker-compose up
```

##### On Mac

Install docker-sync:

```
$ gem install docker-sync
$ brew install fswatch
$ brew install rsync
```

Start docker-sync with:

```
$ docker-sync start
```

For the first time, if you see:

```
docker-sync start
     warning  Please be aware that with the strategy "unison" is now called unison-onesided and you might need to migrate. See https://github.com/EugenMayer/docker-sync/wiki/Migration-Guide for more informations
Shall we continue?
```

then continue and you should see something like:

```
docker-sync start
          ok  Starting rsync
Unable to find image 'eugenmayer/rsync:latest' locally
latest: Pulling from eugenmayer/rsync
e110a4a17941: Pulling fs layer
477670e959c0: Pulling fs layer
0bef35c3f080: Pulling fs layer
e110a4a17941: Verifying Checksum
e110a4a17941: Download complete
0bef35c3f080: Verifying Checksum
0bef35c3f080: Download complete
e110a4a17941: Pull complete
477670e959c0: Verifying Checksum
477670e959c0: Download complete
477670e959c0: Pull complete
0bef35c3f080: Pull complete
Digest: sha256:45a147c180162ffe7f9415ee01076eb4a368c86cc09db381a612c473871628e7
Status: Downloaded newer image for eugenmayer/rsync:latest
          ok  Synced /Users/phuonglm/Projects/teracy/dev/workspace/personal/teracy-official-blog
     success  Rsync server started
          ok  Synced /Users/phuonglm/Projects/teracy/dev/workspace/personal/teracy-official-blog
     success  Starting to watch /Users/phuonglm/Projects/teracy/dev/workspace/personal/teracy-official-blog - Press CTRL-C to stop
```


Open a new terminal window with:

```
$ docker-compose -f docker-compose.yml -f docker-compose-mac.yml up
```

And you should see something like:

```
Starting teracyblog_teracy-blog-dev_1
Attaching to teracyblog_teracy-blog-dev_1
teracy-blog-dev_1  | ## Generating Site with Jekyll
teracy-blog-dev_1  | identical source/stylesheets/screen.css 
teracy-blog-dev_1  | Configuration from /opt/app/_config.yml
teracy-blog-dev_1  | Building site: source -> public
teracy-blog-dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-02-teracy-hello-world.markdown
teracy-blog-dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-03-how-to-start-blogging-easily-with-octopress-and-teracy-dev.markdown
teracy-blog-dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-05-how-to-add-facebook-like-box-to-octopress.markdown
teracy-blog-dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-06-a-separated-django-application-with-unit-tests-coding-convention-checking-and-coverage-report.markdown
teracy-blog-dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-07-keep-manage-share-top-secret-resources-with-git-encrypt-and-gitolite.markdown
teracy-blog-dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-08-multiple-github-custom-domains.markdown
```

##### On Windows
TODO(hoatle): check and work on this


Now, keep that console and open http://localhost:4000 to see the blog, It'll auto rebuild when you 
make changes on your content.

#### 3.2. How to run blog with Docker in prod mode

From distributed Docker image:

```
$ docker run -p 8080:80 teracy/blog
```

or with docker-compose and from docker-compose.prod.yml file:

```
$ docker-compose -f docker-compose.prod.yml up
```

Then open http://localhost:8080 to see static blog site served by nginx.

#### 3.3. How to build the prod Docker image

First, use teracy/blog:dev_latest image to generate static content:

```
$ docker run -it --rm -v $(pwd):/opt/app teracy/blog:dev_latest
```

And then:

```
$ docker-compose -f docker-compose.prod.yml build
```


### 4. Learn more at http://octopress.org/docs/

## Blog post structure guide

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
