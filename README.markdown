# teracy-blog

Teracy's official blog at http://blog.teracy.com


## Getting Started

- Set up `teracy-dev` if not yet, follow: http://dev.teracy.org/docs/develop/getting_started.html

- Fork this repo into your github account

- Clone the forked repo into `~/teracy-dev/workspace` directory:

  ```bash
  $ cd ~/teracy-dev/workspace/
  $ git clone <your_forked_repository_here> teracy-blog
  $ cd teracy-blog
  $ git remote add upstream git@github.com:teracyhq/blog.git
  ```
Note: You need to fetch the latest changes of `teracy-blog` before going to the next step. Please see the details at http://dev.teracy.org/docs/develop/workflow.html.

## How to work in dev mode

- Start:

  Open the first terminal window and let the file watching keep running:

  ```bash
  $ cd ~/teracy-dev
  $ vagrant up
  ```

  Open the second terminal window:

  ```bash
  $ cd ~/teracy-dev
  $ vagrant ssh
  $ ws
  $ cd teracy-blog
  $ docker-compose pull && docker-compose up -d
  ```

  Open the third terminal window to identity the \<vm_ip_address>, follow: http://dev.teracy.org/docs/develop/basic_usage.html#ip-address

  Open \<vm_ip_address>:4000 to preview on local.

  Need to make sure the blog build completed before previewing it. Use the command below:

  ```bash
  $ docker-compose logs -f
  ```

- Update new changes:

  Update new changes, save the changes, and run the command below:

  ```bash
  $ docker-compose exec dev rake generate
  ```

  Refresh the browser to see the new changes.


- Stop working:

  ```bash
  $ docker-compose stop
  ```


## How to review other work and PRs (pull requests)


To review other work and PRs submitted by others, for example, with `hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub`, run a Docker image:

```
$ docker run --rm -p 8888:80 hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub
```

And open \<vm_ip_address>:8888 to review the changes on local

Press Ctrl + c to exit the logs.


## How to run in prod mode

Run in the prod mode from official distributed Docker image:

```
$ docker pull teracy/blog
$ docker run -p 8080:80 teracy/blog
```

or with docker-compose and from docker-compose.prod.yml file:

```
$ docker-compose -f docker-compose.prod.yml pull && docker-compose -f docker-compose.prod.yml up
```

Then open \<vm_ip_address>:8080 to see the static blog site served by nginx.


## How to build the prod Docker image

First, use the teracy/blog:dev_latest image to generate static content:

```
$ docker run --rm -v $(pwd):/opt/app teracy/blog:dev_latest
```

And then:

```
$ docker-compose -f docker-compose.prod.yml build
```

## travis-ci configuration
You just need to configure travis-ci only one time. After each travis-ci build, new Docker images are pushed, we can review your work (PR) by running the Docker images instead of fetching git code and build it on local ourselves.

Here are things you need to do:

- Register your account at https://hub.docker.com
- Register your account at travis-ci.org
- Enable teracy-blog repository on travis-ci (for example: https://travis-ci.org/hoatle/teracy-blog)
- Fill in the following environment variables settings for teracy-blog travis-ci project by
  following: https://docs.travis-ci.com/user/environment-variables/#Defining-Variables-in-Repository-Settings.
  In the *Name* and *Value* fields, please add the info below correlatively: 

  + Fill in "DOCKER_IMAGE" into the *Name* field, and your repo link from https://hub.docker.com into the *Value*, for example, hoatle/teracy-blog  (from https://hub.docker.com/r/hoatle/teracy-blog/)
  + Fill in "DOCKER_USERNAME" into the *Name* field and your Docker username into the *Value*  field
  + Fill in "DOCKER_PASSWORD" into the *Name* field and your Docker password into the *Value* field

And you're done!

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
