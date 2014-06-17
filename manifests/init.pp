# == Class: resource
#
# Module to manage resources
#
class resource (
  $file = undef,
  $file_hiera_merge = false,
  $mount = undef,
  $mount_hiera_merge = false,
  $cron = undef,
  $cron_hiera_merge = false,
  $exec = undef,
  $exec_hiera_merge = false,
  $service = undef,
  $service_hiera_merge = false,
) {
  if $file {
    if type($file_hiera_merge) == 'string' {
      $file_hiera_merge_real = str2bool($file_hiera_merge)
    } else {
      $file_hiera_merge_real = $file_hiera_merge
    }
    validate_bool($file_hiera_merge_real)
    if $file_hiera_merge_real == true {
      $file_real = hiera_hash('resource::file')
    } else {
      $file_real = $file
    }
    validate_hash($file_real)
    create_resources(file,$file_real)
  }

  if $mount {
    if type($mount_hiera_merge) == 'string' {
      $mount_hiera_merge_real = str2bool($mount_hiera_merge)
    } else {
      $mount_hiera_merge_real = $mount_hiera_merge
    }
    validate_bool($mount_hiera_merge_real)
    if $mount_hiera_merge_real == true {
      $mount_real = hiera_hash('resource::mount')
    } else {
      $mount_real = $mount
    }
    validate_hash($mount_real)
    create_resources(mount,$mount_real)
  }

  if $cron {
    if type($cron_hiera_merge) == 'string' {
      $cron_hiera_merge_real = str2bool($cron_hiera_merge)
    } else {
      $cron_hiera_merge_real = $cron_hiera_merge
    }
    validate_bool($cron_hiera_merge_real)
    if $cron_hiera_merge_real == true {
      $cron_real = hiera_hash('resource::cron')
    } else {
      $cron_real = $cron
    }
    validate_hash($cron_real)
    create_resources(cron,$cron_real)
  }

  if $exec {
    if type($exec_hiera_merge) == 'string' {
      $exec_hiera_merge_real = str2bool($exec_hiera_merge)
    } else {
      $exec_hiera_merge_real = $exec_hiera_merge
    }
    validate_bool($exec_hiera_merge_real)
    if $exec_hiera_merge_real == true {
      $exec_real = hiera_hash('resource::exec')
    } else {
      $exec_real = $exec
    }
    validate_hash($exec_real)
    create_resources(exec,$exec_real)
  }

  if $service {
    if type($service_hiera_merge) == 'string' {
      $service_hiera_merge_real = str2bool($service_hiera_merge)
    } else {
      $service_hiera_merge_real = $service_hiera_merge
    }
    validate_bool($service_hiera_merge_real)
    if $service_hiera_merge_real == true {
      $service_real = hiera_hash('resource::service')
    } else {
      $service_real = $service
    }
    validate_hash($service_real)
    create_resources(service,$service_real)
  }
}
