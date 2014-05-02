bunpack [![Gem Version](https://badge.fury.io/rb/bunpack.svg)](http://badge.fury.io/rb/bunpack) [![Build Status](https://travis-ci.org/blendle/bunpack.svg?branch=master)](https://travis-ci.org/blendle/bunpack) 
=======

Drop-in replacement for aunpack that removes the __MACOSX directory from zip archives.

## Usage

`bunpack /path/to/archive.{tar,tgz,zip}`

The archive is extracted in `pwd`.

## Dependencies

* atool
* zip
