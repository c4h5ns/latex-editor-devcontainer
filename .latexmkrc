#!/usr/bin/env perl

$latex     = 'uplatex %O -file-line-error -kanji=utf8 -no-guess-input-enc -synctex=1 -interaction=nonstopmode %S';
$pdflatex  = 'pdflatex %O -file-line-error -synctex=1 -interaction=nonstopmode %S';
$lualatex  = 'lualatex %O -file-line-error -synctex=1 -interaction=nonstopmode %S';
$xelatex   = 'xelatex %O -file-line-error -synctex=1 -interaction=nonstopmode %S';
$biber     = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex    = 'upbibtex %O %B';
$makeindex = 'upmendex %O -o %D %S';
$dvipdf    = 'dvipdfmx %O -o %D %S';
$dvips     = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf    = 'ps2pdf %O %S %D';
$pdf_mode  = 3;

$ENV{TZ} = 'Asia/Tokyo';
$ENV{OPENTYPEFONTS} = '/usr/share/fonts//:';
$ENV{TTFONTS} = '/usr/share/fonts//:';
