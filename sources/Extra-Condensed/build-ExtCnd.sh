#!/bin/sh
set -e
#source ../venv/bin/activate

echo "BUILDING SOFIA SANS EXTRA CONDENSED FONTS"

gftools builder sofia-ext-cond.yml

echo "Fonts Built!"

echo "POST PROCESSING VFs"

fonttools varLib.instancer ../../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed\[wght\].ttf
fonttools varLib.instancer ../../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed-Italic\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed-Italic\[wght\].ttf

echo "DONE!"