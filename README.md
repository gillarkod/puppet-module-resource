# puppet-module-resource
===

[![Build Status](https://travis-ci.org/emahags/puppet-module-resource.png?branch=master)](https://travis-ci.org/emahags/puppet-module-resource)

Module to manage resources

===

# Compatibility
---------------
This module is built for use with Puppet v3 on the following OS families.

* EL 6

===

# Parameters
------------

file
----
Hash of files

- *Default*: undef

- *Hiera example*:
<pre>
resource::file:
  'example file':
    path: '/usr/local/bin/do_stuff'
    owner: root
    group: root
    mode: 0755
</pre>

file_hiera_merge
----------------
Merge files in hiera

- *Default*: false

mount
-----
Hash of mounts

- *Default*: undef

- *Hiera example*:
<pre>
resource::mount:
  '/opt/files':
    ensure: mounted
    atboot: true
    device: 'fileserver:/exports/files'
    fstype: 'nfs'
    options: 'defaults'
</pre>

mount_hiera_merge
-----------------
Merge mounts in hiera

- *Default*: false

cron
----
Hash of cronjobs

- *Default*: undef

- *Hiera example*:
<pre>
resource::cron:
  'do_stuff':
    command: '/usr/local/bin/do_stuff'
    hour: '23'
    user: 'root'
</pre>

cron_hiera_merge
----------------
Merge cronjobs in hiera

- *Default*: false

exec
----
Hash of execs

- *Default*: undef

- *Hiera example*:
<pre>
resource::exec:
  'say hello':
    command: 'wall hello'
    path: '/usr/bin'
</pre>

exec_hiera_merge
----------------
Merge execs in hiera

- *Default*: false

service
-------
Hash of services

- *Default*: undef

- *Hiera example*:
<pre>
resource::service:
  'disable service':
    name: 'example'
    ensure: 'stopped'
    enable: 'false'
</pre>

service_hiera_merge
-------------------
Merge services in hiera

- *Default*: false

package
-------
Hash of packages

- *Default*: undef

- *Hiera example*:
<pre>
resource::package:
  'package':
    name: 'example'
    ensure: 'latest'
</pre>

package_hiera_merge
-------------------
Merge packages in hiera

- *Default*: false
