puppet module for rrdcached
===========================

rrdcached is a daemon that receives updates to existing RRD files, accumulates them and, if enough have been received or a defined time has passed, writes the updates to the RRD file.
This module will help you to setup and configure a simple rrdached instance.

Basic usage
-----------

To install and configure rrdcached:

<pre>
	class {'rrdcached':}
</pre>

or using the parameterized class with more options:

<pre>
	class {'rrdcached':
		gid              => 'nagios',
		journal_dir      => '/var/lib/rrdcached/journal/',
		mode             => '0660',
		timeout          => '1800',
		delay            => '1800',
		write_threads    => '4',
		jump_dir         => '/var/lib/rrdcached/db/',
		always_flush     => true
	}
</pre>

For all options see manifests/init.pp

Development
-----------

* project url: [https://github.com/freifunk-berlin/puppet-rrdcached](https://github.com/freifunk-berlin/puppet-rrdcached)
* issues: [https://github.com/freifunk-berlin/puppet-rrdcached/issues](https://github.com/freifunk-berlin/puppet-rrdcached/issues)

Copyright and License
---------------------

Copyright (C) 2012 Patrick Ringl <patrick_@freenet.de>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
