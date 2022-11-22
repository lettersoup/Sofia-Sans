#!/bin/sh
set -e
#source ../venv/bin/activate

echo "BUILDING SOFIA SANS SEMI CONDENSED FONTS"

gftools builder sofia-semi-cond.yml

echo "Fonts Built!"

echo "POST PROCESSING VFs"

fonttools varLib.instancer ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed\[wght\].ttf wght=100:900 --output ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed\[wght\].ttf
fonttools varLib.instancer ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed-Italic\[wght\].ttf wght=100:900 --output ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed-Italic\[wght\].ttf


echo "POST PROCESSING OTFs"

otfs=$(ls ../../fonts/otf/Semi-Condensed/*.otf)
for otf in $otfs
do
    psautohint -x otilde,tildecomb,tilde $otf;
done

echo "DONE!"