#!/bin/sh
set -e
#source ../venv/bin/activate

echo "BUILDING SOFIA SANS SEMI CONDENSED FONTS"

gftools builder sofia-ext-cond.yml

echo "Fonts Built!"

echo "POST PROCESSING VFs"

fonttools varLib.instancer ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed\[wght\].ttf
fonttools varLib.instancer ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed-Italic\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed-Italic\[wght\].ttf

echo "DONE!"