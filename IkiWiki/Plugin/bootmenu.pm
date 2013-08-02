#!/usr/bin/perl
# Ikiwiki bootstrap plugin.
# Copyright (C) 2011 Julian Andres Klode <jak@jak-linux.org>
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation files
# (the "Software"), to deal in the Software without restriction,
# including without limitation the rights to use, copy, modify, merge,
# publish, distribute, sublicense, and/or sell copies of the Software,
# and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
# BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
# ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.


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
