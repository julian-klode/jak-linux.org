[[!meta title="dir2ogg manpage"]]
# NAME

dir2ogg - Convert MP3, WAV, and M4A files to OGG format

# SYNOPSIS

__dir2ogg__ [ options ] ( _filename_ [_filename2_] ... || _directory_ [_directory2_] ... || [_cdrom-device_] ... )

# DESCRIPTION

__dir2ogg__ converts __MP3__, M4A, WMA and WAV files to the open-source OGG format.
__dir2ogg__ is a python script that simply binds together mpg123, faad, and oggenc making it easier for the user to convert his/her music files.
OGGs are about 15 to 20 percent smaller than MP3 files, with the same relative audio quality.
__dir2ogg__ can be called with the _-d_ flag at the command line to convert any number of directories at once, or given MP3, M4A, WMA,
and/or WAV filenames as arguments, __dir2ogg__ will convert only those files. If converting WAV, M4A or WMA files with _-d_ you must add
the _-w_, _-m_ or _-W_ command line flags respectively. These flags are not neccesary unless using _-d_.
Note that converting M4A files requires you to have faad installed, and converting WMA files requires mplayer.

Keep in mind that converting from MP3 or M4A to OGG is a conversion between two lossy formats. This is fine if you just want to free up some disk space, but if you're a hard-core audiophile you may be disappointed. I really can't notice a difference in quality with 'naked' ears myself.

# General Options

* -h or --help

  print quick usage details to the screen.

* -d or --directory

  convert all MP3 files in _directory_. WAV and M4A files will be converted if used with the _-w_ and _-m_ command line flags.

* -r or --recursive

  like _-d_ but descends recursively into directories.


* -c or --cdda

  Convert an audio CD into ogg. You may pass the device as an argument to the script (default: /dev/cdrom). Requires cdparanoia orq icedax or mplayer


* -p or --preserve-wav

  preserve all WAV files. By default they are deleted.

* -P or --no-pipe

  Do not use pipes to send data from the decoder to the encoder, use temporary wav files instead.

* --delete-input

  Delete the input file after conversion


* -v or --verbose

  increase dir2ogg's verbosity.

# Conversion options

* --convert-all

  convert all supported audio files to OGG. Only used with _-d_ or _-r_. Requires at least mplayer.

* -f or --convert-flac

  convert FLAC files to OGG. Only used with _-d_ or _-r_. Requires ogg123 or flac or mplayer.

* -m or --convert-m4a

  convert M4A files to OGG. Only used with _-d_ or _-r_. Requires faad or mplayer or, for alac, alac-decoder (though mplayer will work, too)

* -W or --convert-wma

  convert WMA files to OGG. Only used with _-d_ or _-r_. Requires mplayer.

* -w or --convert-wav

  convert WAV files to OGG. Only used with _-d_ or _-r_.

* -n or --no-mp3

  ignore MP3 files when converting a directory. Only used with _-d_ or _-r_.

* --(cd|flac|m4a|mp3|wma)-decoder=COMMAND

  Set the decoder you want to use for one filetype, e.g.: --mp3-decoder=lame.
  Run dir2ogg --help to see the available decoders.

* -qN or --quality=N

  OGG quality. N is a number between -1 and 10. Default is 3. Decimals are OK (ie: 3.7)

* -t or --smart-mp3

  Try to use the same quality as the input file. MP3 input only!

# SEE ALSO

_[[mpg123]]_(1),  _[[mplayer]]_(1), _[[oggenc]]_(1)

# BUGS

Enter you bug reports in Launchpad at <https://bugs.launchpad.net/dir2ogg>

# AUTHORS

* __0.10 and newer:__  Julian Andres Klode <jak@jak-linux.org>
* __0.9.3 and older:__ Darren Kirby <d@badcomputer.org>

# CONTRIBUTORS

* __original wma support:__ Cameron Stone <camerons@cse.unsw.edu.au>
* __smart-mp3:__ Marek Palatinus <marek@palatinus.cz>

# License

In contrast to the information given at the end of the webpage, this content
is licensed under the GPL 2 (or at your option) any later version.
