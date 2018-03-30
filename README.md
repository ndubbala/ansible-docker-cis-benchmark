Docker CIS Benchmark
=========

This role pulls https://github.com/docker/docker-bench-security and will run the all checks, unless they are excluded.

Excluding Checks
-----------

To exclude a check, define the following variable (array) and pass it to the role.

cis_docker_benchmark_exclusions:
  - 1.1
  - ...

List the dot notation number of the check you which so skip.

***NOTE: This role DOES NOT MAKE ANY CHANGES TO YOUR SYSTEM***

To achieve that you can use the `ansible-docker-harden` role.

## IMPORTANT INSTALL STEP

If you want to install this via the `ansible-galaxy` command you'll need to run it like this:

`ansible-galaxy install -p roles -r requirements.yml`

With this in the file requirements.yml:

```
- src: https://github.com/josebarn/ansible-docker-cis-benchmark.git
```

Dependencies
------------
Ansible > 2.2

Example Playbook
----------------

```
- name: CIS Benchmark Docker Host
  hosts: servers
  become: yes

  roles:
     - docker-cis-benchmark
```
License
-------

MIT
