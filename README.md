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
file::file:
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


