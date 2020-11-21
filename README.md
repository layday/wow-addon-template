# wow-addon-template

A template to set newbies and seasoned World of Warcraft add-on developers alike
on the right track.

## Prerequisites

You must use [packager](https://github.com/BigWigsMods/packager)
to build and publish your add-on.

## Walkthrough

To build your add-on:

```sh
$ release.sh -m pkgmeta.yaml -d -z
```

To symlink your add-on into `AddOns` during development:

```sh
$ ln -s $PWD/.release/Addon <path to your WoW installation>/_retail_/Interface/AddOns/Addon
```

[to be completed]

## Credits

This template draws inspiration from the WeakAuras and Masque repos.
