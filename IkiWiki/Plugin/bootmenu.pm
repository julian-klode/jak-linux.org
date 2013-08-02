#!/usr/bin/perl
# Ikiwiki bootstrap plugin.
# Copyright (C) 2011 Julian Andres Klode <jak@jak-linux.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.

package IkiWiki::Plugin::bootmenu;

use warnings;
use strict;
use IkiWiki 3.00;

sub import {
	hook(type => "getsetup", id => "bootmenu", call => \&getsetup);
	hook(type => "sanitize", id => "bootmenu", call => \&sanitize);
	hook(type => "pagetemplate", id => "bootmenu", call => \&pagetemplate);
	hook(type => "change", id => "bootmenu", call => \&change);
}

sub getsetup () {
	return 
		plugin => {
			description => "Integration of 'bootstrap from Twitter'",
			safe => 1,
			rebuild => 1,
		},
		bootmenu => {
			type => "string",
			example => ["a", "b", "c"],
			description => "Primary menu",
			safe => 1,
			rebuild => 1,
		},
		bootmenu2 => {
			type => "string",
			example => ["a", "b", "c"],
			description => "Secondary menu",
			safe => 1,
			rebuild => 1,
		},
}

sub sanitize (@) {
	my %params=@_;
	# Move tables into bootstrap's table class
	$params{content} =~ s/<table>/<table class="table">/g;
	return $params{content};
}

sub change () {
	for my $file (@_) {
		next if ($file ne "style.css");
		my $style = readfile($config{destdir}."/style.css");
		$style =~ s/.sidebar/.sidebar-ikiwiki/g;
		$style =~ s/#footer/#footer-ikiwiki/g;
		$style =~ s/.pagefooter/.pagefooter-ikiwiki/g;
		$style =~ s/input#searchbox/input#searchbox-ikiwiki/g;
		writefile "style.css", $config{destdir}, $style;
		return 1;
	}
	return 0;
}

sub isparentpath($$) {
	my $path = shift;
	my $page = shift;

	$path =~ s#//#/#g;
	$page =~ s#//#/#g;
	return 1 if ($path =~ m/^$page/i);
	return 0;
}

sub bootmenu ($) {
	my $page=shift;
	my @ret;

	foreach my $path (@{$config{bootmenu}}) {
	my @pathv = split("/",$path);
	push @ret, {
		page => pagetitle($pathv[-1]),
		url => urlto(bestlink($page, $path), $page),
		active => (isparentpath($page, $path)),
		firstnav => 1,
	};
	}
	foreach my $path (@{$config{bootmenu2}}) {
	my @pathv = split("/",$path);
	push @ret, {
		page => pagetitle($pathv[-1]),
		url => urlto(bestlink($page, $path), $page),
		active => (isparentpath($page, $path)),
		firstnav => 0,
	};
	}

	return @ret;
}

sub pagetemplate (@) {
	my %params=@_;
	my $template=$params{template};

	if ($template->query(name => "bootmenu")) {
		my @menu=bootmenu($params{page});
		$template->param(bootmenu => \@menu);
	}
}

1
