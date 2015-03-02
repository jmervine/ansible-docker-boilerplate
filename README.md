# ansible docker boiler plate

> NOTE: THESE HAVE NOT BEEN TESTED YET!
>
> It's on my todo list.

I'm fairly new to Ansible, as such this is sort of a first pass and comments, suggestions, etc. are welcome. I'm creating this to do basic [Docker](http://docker.io) container handling via pure playbooks (as opposed to using the ["docker module"](http://docs.ansible.com/docker_module.html)).

## setup

The `setup/*.yml` playbooks are for installing docker and preforming basic actions relating to setting it up.

## deploy

The `deploy/*.yml` playbooks are for deploying a container and preforming basic interactions with running containers.

