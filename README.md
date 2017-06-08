andrewrothstein.deis
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-deis.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-deis)

Installs [Deis Worflow Client](https://github.com/deis/workflow-cli)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.deis
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
