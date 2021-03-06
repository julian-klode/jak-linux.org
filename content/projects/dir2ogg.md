---
title: "dir2ogg - audio conversion tool"
date: Thu, 18 Oct 2018 21:36:18 +0200
markup: "mmark"
---



{.table}
Status|License|Language|Links|Latest release
------|-------|--------|-----|------------
Maintenance|GPL-2+|Python|[Github](https://www.github.com/julian-klode/dir2ogg)|[dir2ogg-0.13.tar.gz](0.13/dir2ogg-0.13.tar.gz) ([GPG](0.13/dir2ogg-0.13.tar.gz.asc), Aug 2019)


dir2ogg is a GPL'ed python script which converts mp3, m4a, wma, and wav files
into ogg-vorbis format. It can preserve tags found in the input file where
supported.  It was inspired by the perl script [mp32ogg](http://faceprint.com/code/),
but supports much more features these days. dir2ogg is supported in maintenance
mode, meaning that it will not receive new features, but only bugfixes
(unless someone writes patches for new formats). If you want to submit a patch
or report a bug, please do so in the [bug tracker](https://bugs.launchpad.net/dir2ogg/)
at launchpad.net.

## Downloads
The current stable release is [0.13](0.13/dir2ogg-0.13.tar.gz) ([NEWS](NEWS)). It is recommended
that you install and use this version.
If you need an older version of dir2ogg, you may want to visit the directories
of the relevant release series: [0.10](0.10), [0.11](0.11), [0.12](0.12).

## Installation
Users running [Debian](http://packages.debian.org/dir2ogg),
[Gentoo](http://packages.gentoo.org/package/media-sound/dir2ogg) or
[Ubuntu](http://packages.ubuntu.com/dir2ogg) can install the
software using their standard package managment solution.
Ubuntu users need to enable the *universe* component.

Users running other distributions may need to manually install it, probably
like this:

<pre>
$ tar xzf dir2ogg-0.13.tar.gz
$ cd dir2ogg-0.13
$ sudo sh ./install.sh              # or simply run dir2ogg via ./dir2ogg
</pre>

### Dependencies

{.table}
Format|Recommended|Alternatives
------|-----------|------------
APE (Monkey's Audio)|mac|mplayer
MP3|mpg321|mpg123,lame,mplayer
MP4/M4A/AAC|faad|alac-decoder (for ALAC files), mplayer
FLAC|flac|ogg123 (included in vorbis-tools), mplayer
MPC (Musepack)|mpcdec|mplayer
WMA/ASF|mplayer|
WV (WavPack)|wvunpack|mplayer
Audio-CD|cdparanoia|icedax, cdda2wav, mplayer

## Usage
These are some examples. For more information, read the [manual page](usage).

### Convert files

<pre>$ <b>dir2ogg foo.mp3</b> # <em>one file...</em>
$ <b>dir2ogg -t foo.mp3</b> # <em>one file (keep quality, only for mp3)...</em>
$ <b>dir2ogg foo.mp3 bar.m4a baz.wma qux.wav</b> # <em>multiple files...</em>
</pre>

### Converting directories

<pre>$ <b>dir2ogg -d /path/to/mp3directory</b> # <em>single directory...</em>
$ <b>dir2ogg /path/to/mp3directory</b> # <em>single directory..., same as previous one.</em>
$ <b>dir2ogg -r /path/to/mp3directory</b> # <em>single directory (and subdirs)...</em>
$ <b>dir2ogg -d /path/1/ /path/2 /path/3</b> # <em>multiple directories...</em>
$ <b>dir2ogg -r /path/1/ /path/2 /path/3</b> # <em>recursive...</em></pre>

## Warning
_"Converting from MP3 or M4A to OGG is a conversion between two lossy formats.
This is fine if you just want to free up some disk space, but if you're a
hard-core audiophile you may be disappointed. I really can't notice a difference
in quality with 'naked' ears myself. You might want to do your conversion, then
compare with the original before erasing them."_ - Darren Kirby, initial
dir2ogg developer

