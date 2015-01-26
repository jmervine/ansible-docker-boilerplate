from centos:latest
maintainer Joshua Mervine <joshua@mervine.net>

env ANSIBLEROOT /ansible

# should be automatically overwritten by the env at all times
env USER root

run yum makecache fast -y
run yum install epel-release -y
run yum install openssh-clients -y
run yum install ansible -y
run yum install sshpass -y
run yum install tree -y

run  echo 'export PS1="$(ansible --version|head -n1)> "' \
      >> /root/.bashrc

copy _dockerbuild/ansible.hosts /etc/ansible/hosts
copy _dockerbuild/ansible.cfg /root/.ansible.cfg

run  echo 'sed -ie "s/%%REMOTE_USER%%/${USER}/" /root/.ansible.cfg' \
      >> /root/.bashrc

run     mkdir ${ANSIBLEROOT}
copy    .     ${ANSIBLEROOT}
workdir       ${ANSIBLEROOT}
run     rm -rf _dockerbuild .dockerignore Dockerfile

cmd /bin/bash
