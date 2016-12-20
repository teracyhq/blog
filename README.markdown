# teracy-blog

Teracy's official blog at http://blog.teracy.com


## Getting Started

- Set up `teracy-dev` if not yet, follow: http://dev.teracy.org/docs/develop/getting_started.html

- Fork this repo into your github account

- Clone the forked repo into `~/teracy-dev/workspace` directory:

  ```bash
  $ cd ~/teracy-dev/workspace/
  $ git clone <your_forked_repository_here> teracy-blog
  ```

## How to work in dev mode

- Start:

  Open the first terminal window and let the file watching running:

  ```bash
  $ vagrant up
  ```

  Open the second terminal window:

  ```bash
  $ vagrant ssh
  $ ws
  $ cd teracy-blog
  $ docker-compose pull && docker-compose up -d
  ```

  Open the third terminal window to identity the \<vm_ip_address>, follow: http://dev.teracy.org/docs/develop/basic_usage.html#ip-address

  Open \<vm_ip_address>:4000 to preview on local.

- Update new changes:

  Save new changes and:

  ```bash
  $ docker-compose exec dev rake generate
  ```

  Refresh the browser to see the new changes.


- Stop working:

  ```bash
  $ docker-compose stop
  ```


## How to review


To run a Docker image for reviewing, for example, with `hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub`:

```
$ docker run --rm -p 8888:80 hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub
```

And open http://localhost:8888 to review the changes.

Cmd + c (on Mac) or Ctrl + c (on Linux, Windows) to stop reviewing.


## How to run in prod mode

From official distributed Docker image:

```
$ docker pull teracy/blog
$ docker run -p 8080:80 teracy/blog
```

or with docker-compose and from docker-compose.prod.yml file:

```
$ docker-compose -f docker-compose.prod.yml pull && docker-compose -f docker-compose.prod.yml up
```

Then open \<vm_ip_address>:8080 to see static blog site served by nginx.


## How to build the prod Docker image

First, use teracy/blog:dev_latest image to generate static content:

```
$ docker run --rm -v $(pwd):/opt/app teracy/blog:dev_latest
```

And then:

```
$ docker-compose -f docker-compose.prod.yml build
```

## travis-ci configuration

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

## Tips:

- How to generate content faster when previewing instead of waiting:

  ```bash
  $ docker-compose exec dev rake generate
  ```

- How to access into the container ssh session:

  ```bash
  $ docker-compose exec dev /bin/bash
  app@a4e5c4766cd3:/opt/app$
  ```
