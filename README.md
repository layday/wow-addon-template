# wow-addon-template

A World of Warcraft add-on template to set newbies and seasoned developers alike
on the right track.  *wow-addon-template* contains a sample add-on,
a GitHub workflow which automates releasing your add-on on GitHub, CurseForge
and WoWInterface,
build instructions for *packager*, the de facto add-on build tool,
basic [Luacheck](https://github.com/mpeterv/luacheck) configuration
and an accompanying workflow,
and instructions for [keeping a changelog](https://keepachangelog.com/en/1.0.0/).

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

## Publishing

Pushing a Git tag will trigger the `release` workflow, which will
package and upload your add-on to GitHub, CurseForge and WoWInterface.
For the last two, you will need to generate an API token for uploading.
You can generate a CurseForge API token from
https://authors.curseforge.com/account/api-tokens,
and a WoWInterface token from
https://www.wowinterface.com/downloads/filecpl.php?action=apitokens.
Add the tokens as separate secrets in the settings of your repo
with a `name` value of `CF_API_KEY` and `WOWI_API_TOKEN`, respectively.

## Community

You can ask questions on the [WoW UI Dev](https://discord.gg/sVQCHr5)
Discord server.  You will also find an up-to-date list of development
resources there.

## Credits

This template draws inspiration from the WeakAuras and Masque repos.
