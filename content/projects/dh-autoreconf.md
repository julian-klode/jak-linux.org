---
title: "dh-autoreconf - Automagical autoreconf for debhelper"
date: Thu, 18 Oct 2018 21:36:18 +0200
markup: "mmark"
---



{.table}
Status|License|Language|Bug Tracking|VCS
------|-------|--------|------------|---
Stable|GPL-2+|Perl|Debian BTS|[salsa.debian.org](http://salsa.debian.org/debian/dh-autoreconf)

dh-autoreconf provides easy integration of autoreconf with debhelper and
tools such as *dh* and *cdbs*. It creates a list of all files and their
checksums in the build tree, runs autoreconf, and then removes all files
changed by the autoreconf run during clean. This enables you to run autoreconf
at build-time without having to worry about file changes which break rebuilds
and similar things.

dh-autoreconf can also automatically patch <code>ltmain.sh</code> to add
support for the <code>-Wl,--as-needed</code> option to libtool. Despite the
name and those autotools-specific features, dh-autoreconf is not specific
to autotools and can be used with almost any program which modifies the build
tree (as long as the files it changes/adds can be safely removed).

