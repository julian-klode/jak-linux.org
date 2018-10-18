---
title: "debimg - Alternative debian-cd in Python"
date: Thu, 18 Oct 2018 21:36:18 +0200
lastmod: Thu, 18 Oct 2018 21:36:18 +0200
---



[[!table format=dsv data="""
Status|License|Language|SCM|Latest release
Historic|GPL-3+|Python (2.5)|[Git](http://git.debian.org/?p=debimg/debimg.git)|N/A
"""]]

<div class="alert alert-warning">
    debimg is not in active use or development. This page is provided for
    historical purposes only.
</div>

debimg is a software designed to replace debian-cd. It is written in Python
and released under the terms of the GNU General Public License, version 3 or
(at your option) any later version.


## Why debimg?
debimg provides a flexible, fast, and easy way to generate Debian images. The
facilities provided by debimg core, the basic package of debimg, enable
developers to easily write applications for creating Debian images.

There are many reasons why debimg has been created. First of all, debian-cd is
simply to hard to configure, therefore it urgently needs a replacement.
Secondly, the possible replacement deb-imgs-gen is written in a bad coding
style, and does not use the facilities provided by the Python Standard Library
and the APT Python bindings in a way it could be done.

This all lead to the development of debimg in January 2008, which has failed to
reach its goal and was therefore discontinued in January 2009.

During the development of debimg in 0.0.X series, it has become clear that the
codebase I had created was simply to unflexible, depended to much on the
configuration format and therefore made it hard to make big changes.

Therefore, I announced, in January 2009, the creation of debimg core, a flexible
Python package which allows developers to write applications for creating Debian
images. Together with debimg core, I also announced the plan to create a new
debimg based on debimg core and using a YAML configuration format.

## Features
The following list outlines the features which are expected to be shipped in the
feature-complete release. Most of the features related to debimg core are already
available, though.
<dl>
<dt>Fast</dt>
    <dd><p>Debimg core provides one of the fastest dependency resolving technologies
    used for the creation of installation media and tries to minimize the time
    by only accessing files where needed.</p></dd>
<dt>Free</dt>
    <dd>
    <p>
    Debimg is licensed under the terms of the GNU General Public License,
    version 3 or (at your option) any later version.
    </p>
    </dd>
<dt>Flexible</dt>
    <dd>
    <p>
    Debimg core allows developers to take advantage of a well-sized library of
    classes and functions related to building Debian repositories, and of course
    images. Furthermore, by using the facilities provided by debimg config,
    developers can easily write their own frontends to debimg, using the same
    configuration format.</p>
    </dd>
<dt>Easy to use</dt>
    <dd><p>
    debimg uses a YAML configuration file for configuring all aspects of the
    image building. It also ships a GTK+ frontend which can be used to easily
    create a disc.
    </p></dd>
</dl>


## More information
<dl>
    <dt>Blog</dt>
    <dd><p>
    The 'debimg' category of my blog provides some tutorials about debimg,
    announcements and more.
    </p>
    <p><i>Visit <a href="http://juliank.wordpress.com/category/debimg/">http://juliank.wordpress.com/category/debimg/</a></i></p>
    </dd>
    <dt>Wiki</dt>
    <dd><p>
    The Debian Wiki contains a page about debimg, which is outdated. It will be
    updated in some time.</p>
    <p><i>Visit <a href="http://wiki.debian.org/DebImg">http://wiki.debian.org/DebImg</a></i></p>
    </dd>
    <dt>Repository browser</dt>
    <dd><p>
    Debimg is maintained in its own git repository at alioth.debian.org.</p>
    <p><i>Visit <a href="http://git.debian.org/?p=debimg/debimg.git">http://git.debian.org/?p=debimg/debimg.git</a></i></p>
    </dd>

</dl>



