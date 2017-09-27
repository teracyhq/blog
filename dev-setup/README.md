# teracy-blog

Teracy's official blog at http://blog.teracy.com


## Getting Started

- Set up teracy-dev and dev-setup if not yet. Follow the document at https://github.com/teracyhq/dev-setup/blob/develop/README.md.

- Fork this repo into your github account.

- Clone the forked repo into `~/teracy-dev/workspace` directory:

  ```bash
  $ cd ~/teracy-dev/workspace/
  $ git clone <your_forked_repository_here> blog
  $ cd blog
  $ git remote add upstream git@github.com:teracyhq/blog.git
  ```
  
- Fetch the latest changes of `teracy-blog` before going to the next step. Please see the details at http://dev.teracy.org/docs/develop/workflow.html

- Add the configuration path below to the `teracy-dev/workspace/dev-setup/vagrant_config_default.json` file, if it does not exist yet. It should look like similar to this:

    ```bash
    "config_paths": [ // add paths of json config files to be loaded
      // the path must be relative to the Vagrantfile
      "workspace/blog/dev-setup/vagrant_config_default.json"
    ]
    ```

- Note that you should always sync the `dev-setup` repository along with `teracy-dev`. After changed, `$ vagrant reload --provision` should get the new configuration updated into the VM. Or `$ vagrant destroy` and `$ vagrant up` should set up the new VM from scratch for you.


- Reload the Vagrant box to make sure it's updated.

    ```bash
    $ cd ~/teracy-dev
    $ vagrant reload --provision

- After finishing running (take a long time to set everything up for the first time), you should
  see the following similar output:

    ```bash
    ==> default: Chef Client finished, 11/46 resources updated in 46 seconds
    ==> default: Running provisioner: save_mac_address (shell)...
        default: Running: /var/folders/59/znjnt7bn73d7c7_4l0fsdzm80000gn/T/vagrant-shell20170909-22045-ugdc8c.sh
    ==> default: Running provisioner: ip (shell)...
        default: Running: /var/folders/59/znjnt7bn73d7c7_4l0fsdzm80000gn/T/vagrant-shell20170909-22045-hbl0w8.sh
    ==> default: ip address: 192.168.0.10
    ==> default: vagrant-gatling-rsync is starting the sync engine because you have at least one rsync folder. To disable this behavior, set `config.gatling.rsync_on_startup = false` in your Vagrantfile.
    ==> default: Doing an initial rsync...
    ==> default: Rsyncing folder: /Users/hoatle/teracy-dev/workspace/ => /home/vagrant/workspace
    ==> default:   - Exclude: [".vagrant/", ".git", ".idea/", "node_modules/", "bower_components/", ".npm/", ".#*"]
    ==> default: Watching: /Users/hoatle/teracy-dev/workspace
    ```

## How to work in dev mode

- Dev mode was installed by default in `teracy-blog` cookbook.

- Make sure the ``/etc/hosts`` file get updated automatically with the following commands:

    ```bash
    $ cd ~/teracy-dev
    $ vagrant hostmanager
    ```

- `$ ping dev.blog.teracy.dev` to make sure it pings to the right IP address of the VM:
   http://dev.teracy.org/docs/basic_usage.html#ip-address

- `$ cat /etc/hosts` file from the host machine to make sure there are no duplicated entries for
  `teracy-dev` or the VM IP address.

- SSH into the VM to make sure the docs app is ready by checking the docker logs output:

    ```bash
    $ vagrant ssh
    $ ws
    $ cd blog
    $ docker-compose logs -f
    ```

- Press Ctrl + c to stop following reviewing the logs.

- Open http://dev.blog.teracy.dev or https://dev.blog.teracy.dev on browser to preview on local.

- Update new changes:

  Update new changes, save the changes, and run the command below:

  ```bash
  $ docker-compose exec dev rake generate
  ```

  Refresh the browser to see the new changes.


- Stop working:

  ```bash
  $ docker-compose stop && docker-compose rm -f
  ```


## How to review others' work and PRs (pull requests)


To review work and PRs submitted by others, for example, with `hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub`, run the following command:

```
$ docker-compose -f docker-compose.yml -f docker-compose.review.yml stop review && \
  docker-compose -f docker-compose.yml -f docker-compose.review.yml rm -f review
$ export DOCKER_IMAGE_REVIEW=hoatle/teracy-blog:tasks-BLOG-101-travis-docker-hub && \
  docker-compose -f docker-compose.yml -f docker-compose.review.yml pull review && \
  docker-compose -f docker-compose.yml -f docker-compose.review.yml up review
```

And open review.blog.teracy.dev to review the changes on local dev.

Press Ctrl + c to stop reviewing (stop docker run)


## How to run in prod mode

Run in the prod mode from official distributed Docker image:

```
$ docker-compose -f docker-compose.yml -f docker-compose.prod.yml pull && \
  docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d prod
```

Then open blog.teracy.dev to see the static blog site served by nginx.


## How to build the prod Docker image

First, use the teracy/blog:dev_latest image to generate static content:

```
$ docker-compose run --rm dev
```

And then:

```
$ docker-compose -f docker-compose.yml -f docker-compose.prod.yml build prod
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

  + Fill in "DOCKER_USER" into the *Name* field and your Docker username or organization into the *Value* field.
    For example: teracy, hoatle or hoavt.
  + Fill in "DOCKER_REPO" into the *Name* field and your Docker image repo name into the *Value* field.
    For example: "teracy-blog"
  + Fill in "DOCKER_USERNAME" into the *Name* field and your Docker username into the *Value* field.
  + Fill in "DOCKER_PASSWORD" into the *Name* field and your Docker password into the *Value* field.

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

## Contributing

Please see the CONTRIBUTING.md file.
