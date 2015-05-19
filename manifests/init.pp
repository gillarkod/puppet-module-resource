# == Class: resource
#
# Module to manage resources
#
class resource (
  $file                  = undef,
  $file_hiera_merge      = false,
  $mount                 = undef,
  $mount_hiera_merge     = false,
  $cron                  = undef,
  $cron_hiera_merge      = false,
  $exec                  = undef,
  $exec_hiera_merge      = false,
  $service               = undef,
  $service_hiera_merge   = false,
  $package               = undef,
  $package_hiera_merge   = false,
  $file_line             = undef,
  $file_line_hiera_merge = false,
) {
  if $file {
    if is_string($file_hiera_merge) {
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
    if is_string($mount_hiera_merge) {
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
    if is_string($cron_hiera_merge) {
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
    if is_string($exec_hiera_merge) {
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
    if is_string($service_hiera_merge) {
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

  if $package {
    if is_string($package_hiera_merge) {
      $package_hiera_merge_real = str2bool($package_hiera_merge)
    } else {
      $package_hiera_merge_real = $package_hiera_merge
    }
    validate_bool($package_hiera_merge_real)
    if $package_hiera_merge_real == true {
      $package_real = hiera_hash('resource::package')
    } else {
      $package_real = $package
    }
    validate_hash($package_real)
    create_resources(package,$package_real)
  }

  if $file_line {
    if is_string($file_line_hiera_merge) {
      $file_line_hiera_merge_real = str2bool($file_line_hiera_merge)
    } else {
      $file_line_hiera_merge_real = $file_line_hiera_merge
    }
    validate_bool($file_line_hiera_merge_real)
    if $file_line_hiera_merge_real == true {
      $file_line_real = hiera_hash('resource::file_line')
    } else {
      $file_line_real = $file_line
    }
    validate_hash($file_line_real)
    create_resources(file_line,$file_line_real)
  }
}
