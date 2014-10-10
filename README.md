# package

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with package](#setup)
    * [What package affects](#what-package-affects)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Development - Guide for contributing to the module](#development)

## Overview

A wrapper around the package resource type

## Module Description

This module allows one to define package resources in Hiera.

## Setup

### What package affects

* Packages will be installed/removed/upgraded.

## Usage

In a class:
```
include ::package
```

In hiera:
```
package::package:
  bash:
    version: 4.2.theonewiththeshellshockpatches
  git: {}
```

## Reference

See https://docs.puppetlabs.com/references/latest/type.html#package for the
list of available attributes.

## Development

Patches welcome.
