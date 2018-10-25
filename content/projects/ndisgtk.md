---
title: "ndisgtk - graphical frontend for ndiswrapper"
date: Thu, 18 Oct 2018 21:36:18 +0200
lastmod: Thu, 18 Oct 2018 21:36:18 +0200
markup: "mmark"
---



{.table}
Status|License|Language|Launchpad|VCS|Latest release
------|-------|--------|---------|---|---------------
Maintenance|GPL-2+|Python|[ndisgtk](https://launchpad.net/ndisgtk)|[Bazaar@LP](https://code.launchpad.net/~juliank/ndisgtk/trunk)|[ndisgtk-0.8.5.tar.gz](ndisgtk-0.8.5.tar.gz) ([GPG](ndisgtk-0.8.5.tar.gz.asc), Jan 2010)

ndisgtk is a graphical frontend for ndiswrapper, a Linux module for
using network drivers written for Microsoft Windows. As indicated in
the table above, development of ndisgtk has stopped, and only critical
bugs will be fixed. If you experience issues with ndisgtk, you can report
them in the project's [bug tracker](https://bugs.launchpad.net/ndisgtk/) at
launchpad.net. Debian and Ubuntu users should report it in the distribution
bug tracker.

Official packages are provided for [Debian](http://packages.debian.org/ndisgtk)
and [Ubuntu](http://packages.ubuntu.com/ndisgtk). Additionally, third-party
packages are available for the following distributions:

 * [Wolvix](http://wolvix.org/) (Included on disk)
 * [RedHat Enterprise Linux](http://pkgs.repoforge.org/ndisgtk/) (by repoforge.org, 3 and newer)
 * [Zenwalk](http://packages.zenwalk.org/?q=ndisgtk&zversion=current)


Release history
---------------


### 0.8.5				2010-01-28
  - Add X-Ubuntu-Gettext-Domain to the desktop files ([LP: #331852](https://bugs.launchpad.net/bugs/331852))
  - Ignore modprobe warnings about missing .conf in filenames ([LP: #498369](https://bugs.launchpad.net/bugs/498369))
  - Support NetworkManager 0.7 ([LP: #500541](https://bugs.launchpad.net/bugs/500541))
  - Import new translations from Launchpad

[ndisgtk-0.8.5.tar.gz](ndisgtk-0.8.5.tar.gz) [ndisgtk-0.8.5.tar.gz.asc](ndisgtk-0.8.5.tar.gz.asc)
  
### 0.8.4				2008-10-02
  - Display an error message if the module could not be loaded,
    and ask the user to verify the installation. ([Closes: #500637](https://bugs.debian.org/500637))
  - Display an error message if no network configuration tool could
    be found ([LP: #256263](https://bugs.launchpad.net/bugs/256263))
  - Import new translations from Launchpad

[ndisgtk-0.8.4.tar.gz](ndisgtk-0.8.4.tar.gz) [ndisgtk-0.8.4.tar.gz.asc](ndisgtk-0.8.4.tar.gz.asc)

### 0.8.3				2008-03-28
  - Fix removal of installed drivers ([LP: #108656](https://bugs.launchpad.net/bugs/108656))
  - Use gksu/kdesu in desktop files

[ndisgtk-0.8.3.tar.gz](ndisgtk-0.8.3.tar.gz)
[ndisgtk-0.8.3.tar.gz.asc](ndisgtk-0.8.3.tar.gz.asc)

### 0.8.2				2008-02-21
  - Install icons into /usr/share/icons/hicolor/48x48/apps
  - Load icons from active icon theme

[ndisgtk-0.8.2.tar.gz](ndisgtk-0.8.2.tar.gz)
[ndisgtk-0.8.2.tar.gz.asc](ndisgtk-0.8.2.tar.gz.asc)

### 0.8.1				2008-01-04
  - better icon (thanks to andrewd18@gmail.com)
  - import new translations from launchpad

[ndisgtk-0.8.1.tar.gz](ndisgtk-0.8.1.tar.gz)
[ndisgtk-0.8.1.tar.gz.asc](ndisgtk-0.8.1.tar.gz.asc)

### 0.8.0				2007-10-03
  - use intltool and add new translations
  - use subprocess.Popen to call processes, fixes problems with whitespace in
    file path. ([LP: #133623](https://bugs.launchpad.net/bugs/133623))
  - Use ndiswrapper -ma instead of ndiswrapper -m ([LP: #138852](https://bugs.launchpad.net/bugs/138852))
  - Unload the module before loading it, in case it was already loaded
  - Remove invalid Application category from desktop files
  - Special icon for invalid drivers

[ndisgtk-0.8.0.tar.gz](ndisgtk-0.8.0.tar.gz)
[ndisgtk-0.8.0.tar.gz.asc](ndisgtk-0.8.0.tar.gz.asc)

### 0.7.2				2007-06-08
  - show the driver list if only invalid drivers are installed
  - update po/*.po
    - po/de.po: localize "Invalid Driver"

[ndisgtk-0.7.2.tar.gz](ndisgtk-0.7.2.tar.gz)
[ndisgtk-0.7.2.tar.gz.asc](ndisgtk-0.7.2.tar.gz.asc)

### 0.7.1				2007-05-16
  - List invalid drivers and allow their removal
  - Fix list position (now i, was i-1) for newer ndiswrappers
    - Closes: [LP: #108656](https://bugs.launchpad.net/bugs/108656) (ndisgtk can't remove installed driver)
  - Add special desktop file for KDE.
    - Closes: [LP: #93808](https://bugs.launchpad.net/bugs/93808) (ndisgtk can't configure wireless network in kde)
  - Added this file

[ndisgtk-0.7.1.tar.gz](ndisgtk-0.7.1.tar.gz)
[ndisgtk-0.7.1.tar.gz.asc](ndisgtk-0.7.1.tar.gz.asc)

### 0.7.0				2007-05-13
  - New Developer (Julian Andres Klode <jak@jak-linux.org>)
  - Following 0.6 (December 2005)
  - po/Makefile: Install mo files to ndisgtk.mo
  - po/de.po: Add German Localization
  - ndisgtk: Add Support for newer ndiswrapper versions like 1.43
  - Makefile: Install icon to /usr/share/icons and ndisgtk to /usr/sbin
  - Use su-to-root instead of gksu in desktop file

[ndisgtk-0.7.0.tar.gz](ndisgtk-0.7.0.tar.gz)
[ndisgtk-0.7.0.tar.gz.asc](ndisgtk-0.7.0.tar.gz.asc)

