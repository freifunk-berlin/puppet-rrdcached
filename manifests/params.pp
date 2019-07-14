class rrdcached::params {
  $ensure = 'present'
  $auto_upgrade = false
  $service_ensure = 'running'
  $service_enable = true

  $gid     = 'root'
  $journal_dir = '/var/lib/rrdcached/journal/'
  $mode    = '0660'
  $timeout = '1800'
  $delay   = '1800'
  $write_threads = '4'
  $jump_dir = '/var/lib/rrdcached/db/'
  $always_flush = true
  $restrict_writes = false

  case $::operatingsystem {
    'Debian', 'Ubuntu': {
      $package = [ 'rrdcached' ]
      $config = '/etc/default/rrdcached'
      $service_name = 'rrdcached'
    }
    default: {
      fail("\"${module_name}\" is not supported on \"${::operatingsystem}\"")
    }
  }

}
