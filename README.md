[![Build Status](https://travis-ci.org/while-true-do/ansible-role-yum-cron.svg?branch=master)](https://travis-ci.org/while-true-do/ansible-role-yum-cron)

# Ansible Role: yum-cron 
| A role to install and configure yum-cron

## Motivation

Install and configure yum-cron to stay up to date.

## Installation

Install from [Ansible Galaxy](https://galaxy.ansible.com/while_true_do/yum-cron)

```
ansible-galaxy install while_true_do.yum-cron
```

Install from [Github](https://github.com/while-true-do/ansible-role-yum-cron)

```
git clone https://github.com/while-true-do/ansible-role-yum-cron.git while_true_do.yum-cron
```

## Requirements

YUM must be /will be installed, of course.
Its a good idea to configure yum, first. 

You will find an ansible role here:
<https://galaxy.ansible.com/while_true_do/yum>
<https://github.com/while-true-do/ansible-role-yum>

Used Modules:
-   [package](http://docs.ansible.com/ansible/latest/package_module.html)
-   [template](http://docs.ansible.com/ansible/latest/template_module.html)

## Dependencies

-   [while-true-do.yum](https://galaxy.ansible.com/while_true_do/yum/)

```
ansible-galaxy install -r requirements.yml
```

## Role Variables

CentOS does not support other update commands. Defaults must be used.
- <https://www.centos.org/forums/viewtopic.php?f=47&t=51300>

```
# defaults/main.yml

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
# CentOS does not support other update_cmd then defaults.
wtd_yum_cron_update_cmd: 'defaults'
wtd_yum_cron_update_messages: 'yes'
wtd_yum_cron_download_updates: 'yes'
wtd_yum_cron_apply_updates: 'no'
wtd_yum_cron_random_sleep: '360'

wtd_yum_cron_emit_via: 'stdio'
wtd_yum_cron_output_width: '80'

# yum-cron-hourly.conf
# CentOS does not support other update_cmd then defaults.
wtd_yum_cron_hourly_update_cmd: 'defaults'
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
    - { role: while_true_do.yum-cron }
```

Advanced Example:

```
# To enable E-Mail Notifications
- hosts: servers 
  roles:
    - { role: while_true_do.yum-cron, wtd_yum_cron_emit_via: 'email', wtd_yum_cron_email_to: 'mymail@example.com' }
```

## Testing

All tests are located in [test directory](./tests/).

Basic testing:

```
bash ./tests/test-spelling.sh
bash ./tests/test-ansible.sh
```


## Contribute / Bugs

Thank you so much for considering to contribute. Every contribution helps us.
We are really happy, when somebody is joining the hard work. Please have a look 
at the links first.

-   [Contribution Guidelines](./docs/CONTRIBUTING.md)
-   [Create an issue or Request](https://github.com/while-true-do/ansible-role-yum-cron/issues)
-   [See who was contributing already](https://github.com/while-true-do/ansible-role-yum-cron/graphs/contributors)

## License

This work is licensed under a [BSD License](https://opensource.org/licenses/BSD-3-Clause).

## Author Information

Blog: [blog.while-true-do.org](https://blog.while-true-do.org)

Mail: [hello@while-true-do.org](mailto:hello@while-true-do.org)
