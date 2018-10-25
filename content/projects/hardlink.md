---
title: "hardlink - replace file copies using hardlinks"
date: Thu, 18 Oct 2018 21:36:18 +0200
markup: "mmark"
---



{.table}
Status|License|Language|Bug tracking|VCS|Latest release
------|-------|--------|------------|---|---------------
Deprecated|MIT|Python|[email](mailto:jak@jak-linux.org)|[salsa.debian.org](http://salsa.debian.org/jak/hardlink)|[hardlink_0.1.2.tar.gz](hardlink_0.1.2.tar.gz) ([GPG](hardlink_0.1.2.tar.gz.asc), Feb 2012)
Stable|MIT|C|[email](mailto:jak@jak-linux.org)|[salsa.debian.org](http://salsa.debian.org/gitweb/jak/hardlink)|[hardlink_0.3.0.tar.xz](hardlink_0.3.0.tar.xz) ([GPG](hardlink_0.3.0.tar.xz.asc), Sep 2014)


hardlink is a tool which replaces multiple copies of a file with hardlinks.
Inspiration came from <http://code.google.com/p/hardlinkpy/>, but no code has
been used. It was rewritten from scratch because hardlinkpy code was not very
readable and written against old Python versions. The program requires Python
2.5 or newer, and should work with Python 3 after running 2to3 on it.

<div class="well">

<b>Note:</b> Fedora provides a different software under the hardlink name,
written in C. Before complaining here about a bug in a hardlink package installed
from your distribution, first check that it is indeed this program, and not
the one provided by Fedora.

</div>

Downloads
------------
See in the table above for the current releases. Older releases are available as
well (just change the version number as needed in another link), but there are
no links here.

Installation
------------
To install hardlink into /usr, run make install.

 * <code>DESTDIR</code> - May be set to another root system (useful for packaging)
 * <code>PREFIX</code>  - Normally <code>usr</code>, may be changed to <code>usr/local</code>
 * <code>MANDIR</code> - Normally <code>$(PREFIX)/share/man</code> (some systems may use <code>$(PREFIX)/man</code>)
 * <code>BINDIR</code>  - Normally <code>$(PREFIX)/bin</code>

Differences to hardlinkpy
-------------------------
For users of hardlinkpy, several things are different. One of the most
important changes is the renaming of all --foo-ignore arguments to
--ignore-foo ones. This is more similar to the naming of options in GNU
programs.

* --timestamp-ignore has been renamed to --ignore-time
* --owner-ignore has been renamed to --ignore-owner
* --rights-ignore has been renamed to --ignore-mode
* --filenames-equal has been renamed to --respect-name

The option --reverse has been renamed to --minimize. The option --max has
been renamed to --maximize.

At the moment, output is different. This may change at a later point.

Licensing
---------
hardlink is published under the terms of the MIT license. See the source code
for more information. This file is subject to the same licensing terms.

