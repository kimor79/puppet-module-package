# == Class: package
#
# This reads hiera information to create package resources.
#
# === Parameters
#
# See https://docs.puppetlabs.com/references/latest/type.html#package
#
# === Variables
#
# === Examples
#
#  class { ::package: }
#
# === Authors
#
# Kimo Rosenbaum <kimor79@yahoo.com>
#
# === Copyright
#
# Copyright 2014 Kimo Rosenbaum
#
class package {

  $defaults = {
    'ensure' => 'installed',
  }

  $packages = hiera_hash('package::package')

  if $packages {
    validate_hash($packages)
    create_resources('package::package', $packages, $defaults)
  }
}
