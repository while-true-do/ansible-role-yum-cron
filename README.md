[![Build Status](https://travis-ci.org/while-true-do/ansible-role-yum-cron.svg?branch=master)](https://travis-ci.org/while-true-do/ansible-role-yum-cron)

# Ansible Role: yum-cron 
| A role to install and configure yum-cron

## Installation

Galaxy Link: <https://galaxy.ansible.com/while-true-do/yum-cron>

```
ansible-galaxy install while-true-do.yum-cron
```

Github Link: <https://github.com/while-true-do/ansible-role-yum-cron>

```
git clone https://github.com/while-true-do/ansible-role-yum-cron.git while-true-do.yum-cron
```

## Requirements

YUM must be /will be installed, of course.
Its a good idea to configure yum, first. 

You will find an ansible role here:
<https://galaxy.ansible.com/while-true-do/yum>
<https://github.com/while-true-do/ansible-role-yum>

## Dependencies

None.

## Role Variables

```
# defaults/main.yml

---
# yum-cron-configuration
yum_cron_packages: [ 'yum-cron' ]
# yum-cron general settings
yum_cron_system_name: 'None'

yum_cron_email_from: 'root@localhost'
yum_cron_email_to: 'root'
yum_cron_email_host: 'localhost'

yum_cron_group_list: 'None'
yum_cron_group_package_types: 'mandatory, default'

yum_cron_debuglevel: '-2'
yum_cron_mdpolicy: 'group:main'
yum_cron_skip_broken: 'False'
yum_cron_assumeyes: 'False'

# yum-cron.conf
yum_cron_update_cmd: 'security'
yum_cron_update_messages: 'yes'
yum_cron_download_updates: 'yes'
yum_cron_apply_updates: 'no'
yum_cron_random_sleep: '360'

yum_cron_emit_via: 'stdio'
yum_cron_output_width: '80'

# yum-cron-hourly.conf
yum_cron_hourly_update_cmd: 'security'
yum_cron_hourly_update_messages: 'no'
yum_cron_hourly_download_updates: 'no'
yum_cron_hourly_apply_updates: 'no'
yum_cron_hourly_random_sleep: '15'

yum_cron_hourly_emit_via: 'stdio'
yum_cron_hourly_output_width: '80'
```

## Example Playbook

Simple Example:

```
- hosts: servers 
  roles:
    - { role: while-true-do.yum-cron }
```

Advanced Example:

```
# To enable E-Mail Notifications
- hosts: servers 
  roles:
    - { role: while-true-do.yum-cron, yum_cron_emit_via: 'email', yum_cron_email_to: 'mymail@example.com' }
```

## License

This work is licensed under a [BSD License](https://opensource.org/licenses/BSD-3-Clause).

## Contribute / Bugs

**bug reports:** <https://github.com/while-true-do/ansible-role-yum-cron/issues>

**contributers:** <https://github.com/while-true-do/ansible-role-yum-cron/graphs/contributors>

## Author Information

**blog:** <https://blog.while-true-do.org>

**github:** <https://github.com/daniel-wtd>

**contact:** [mail@while-true-do.org](mailto:mail@while-true-do.org)
