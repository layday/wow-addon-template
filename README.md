# wow-addon-template

A World of Warcraft add-on template to set newbies and seasoned developers alike
on the right track.  *wow-addon-template* contains a bare-bones add-on,
a GitHub workflow which automates releasing add-ons on GitHub, CurseForge
and WoWInterface with the aid of [*packager*](https://github.com/BigWigsMods/packager),
build instructions for *packager*,
basic [Luacheck](https://github.com/mpeterv/luacheck) configuration,
and a [model changelog](https://keepachangelog.com/en/1.0.0/).

## Development

You must use [*packager*](https://github.com/BigWigsMods/packager)
to build your add-on.  *packager* requires a POSIX environment.

To build your add-on:

```sh
$ release.sh -m pkgmeta.yaml -d -z
```

To symlink your add-on into `AddOns` during development:

```sh
$ ln -s $PWD/.release/Addon <path to your WoW installation>/_retail_/Interface/AddOns/Addon
```

## Community

You can ask questions on the [WoW UI Dev](https://discord.gg/sVQCHr5)
Discord server.  You will also find an up-to-date list of development
resources there.

## Credits

This template draws inspiration from the WeakAuras and Masque repos.
