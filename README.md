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

CentOS does not support other update_cmd. Defaults must be used.
- <https://www.centos.org/forums/viewtopic.php?f=47&t=51300>

```
# defaults/main.yml

---
# yum-cron-configuration
wtd_yum_cron_packages: [ 'yum-cron' ]
# yum-cron general settings
wtd_yum_cron_system_name: 'None'

wtd_yum_cron_email_from: 'root@localhost'
wtd_yum_cron_email_to: 'root'
wtd_yum_cron_email_host: 'localhost'

wtd_yum_cron_group_list: 'None'
wtd_yum_cron_group_package_types: 'mandatory, default'

wtd_yum_cron_debuglevel: '-2'
wtd_yum_cron_mdpolicy: 'group:main'
wtd_yum_cron_skip_broken: 'False'
wtd_yum_cron_assumeyes: 'False'

# yum-cron.conf
wtd_yum_cron_update_cmd: 'security'
wtd_yum_cron_update_messages: 'yes'
wtd_yum_cron_download_updates: 'yes'
wtd_yum_cron_apply_updates: 'no'
wtd_yum_cron_random_sleep: '360'

wtd_yum_cron_emit_via: 'stdio'
wtd_yum_cron_output_width: '80'

# yum-cron-hourly.conf
wtd_yum_cron_hourly_update_cmd: 'security'
wtd_yum_cron_hourly_update_messages: 'no'
wtd_yum_cron_hourly_download_updates: 'no'
wtd_yum_cron_hourly_apply_updates: 'no'
wtd_yum_cron_hourly_random_sleep: '15'

wtd_yum_cron_hourly_emit_via: 'stdio'
wtd_yum_cron_hourly_output_width: '80'
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
    - { role: while-true-do.yum-cron, wtd_yum_cron_emit_via: 'email', wtd_yum_cron_email_to: 'mymail@example.com' }
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
