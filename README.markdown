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
$ docker-compose pull && docker-compose up
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
          ok  Synced /Users/hoatle/teracy-dev/workspace/teracy-blog
     success  Rsync server started
          ok  Synced /Users/hoatle/teracy-dev/workspace/teracy-blog
     success  Starting to watch /Users/hoatle/teracy-dev/workspace/teracy-blog - Press CTRL-C to stop

```


Open a new terminal window with:

```
$ docker-compose pull && docker-compose -f docker-compose.yml -f docker-compose-mac.yml up
```

And you should see something like:

```
Creating teracyblog_dev_1
Attaching to teracyblog_dev_1
dev_1  | ## Generating Site with Jekyll
dev_1  | identical source/stylesheets/screen.css 
dev_1  | Configuration from /opt/app/_config.yml
dev_1  | Building site: source -> public
dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-02-teracy-hello-world.markdown
dev_1  | revision plugin::full_path: /opt/app/source/_posts/2013-08-03-how-to-start-blogging-easily-with-octopress-and-teracy-dev.markdown
```

##### On Windows
TODO(hoatle): check and work on this


Now, keep that console and open http://localhost:4000 to see the blog, It'll auto rebuild when you 
make changes on your content.

Tip:

- How to generate content faster when previewing instead of waiting:

  Open a new terminal window:

  ```
  $ cd teracy-blog
  $ docker-compose exec dev rake generate
  ```

- How to access into the container ssh session:

  Open a new terminal window:

  ```
  $ cd teracy-blog
  $ docker-compose exec dev /bin/bash
  app@a4e5c4766cd3:/opt/app$
  ```


#### 3.2. How to run blog with Docker in prod mode

From distributed Docker image:

```
$ docker run -p 8080:80 teracy/blog
```

or with docker-compose and from docker-compose.prod.yml file:

```
$ docker-compose -f docker-compose.prod.yml pull && docker-compose -f docker-compose.prod.yml up
```

Then open http://localhost:8080 to see static blog site served by nginx.

#### 3.3. How to build the prod Docker image

First, use teracy/blog:dev_latest image to generate static content:

```
$ docker run --rm -v $(pwd):/opt/app teracy/blog:dev_latest
```

And then:

```
$ docker-compose -f docker-compose.prod.yml build
```

### 4. travis-ci configuration

- Register your account at https://hub.docker.com
- Register your account at travis-ci.org
- Enable teracy-blog repository on travis-ci (for example: https://travis-ci.org/hoatle/teracy-blog)
- Fill in the following environment variables settings for teracy-blog travis-ci project by
  following: https://docs.travis-ci.com/user/environment-variables/#Defining-Variables-in-Repository-Settings
  + DOCKER_IMAGE (for example: hoatle/teracy-blog => https://hub.docker.com/r/hoatle/teracy-blog/)
  + DOCKER_USERNAME (fill in your Docker username)
  + DOCKER_PASSWORD (fill in your Docker password)

And you're done. After each travis-ci build, new Docker images are pushed, we can review the work
by running the Docker images instead of fetching git code and build it on local ourselves.

To run a Docker image for reviewing, for example, with `hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub`:

```
$ docker run --rm -p 8888:80 hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub
```

And open http://localhost:8888 to review the changes.

### 5. Learn more at http://octopress.org/docs/

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
