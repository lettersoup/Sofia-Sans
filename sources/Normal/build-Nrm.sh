#!/bin/sh
set -e
#source ../venv/bin/activate

echo "BUILDING SOFIA SANS NORMAL FONTS"

gftools builder sofia-normal.yml

echo "Fonts Built!"

echo "POST PROCESSING VFs"

fonttools varLib.instancer ../../fonts/variable/Normal/SofiaSans\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Normal/SofiaSans\[wght\].ttf
fonttools varLib.instancer ../../fonts/variable/Normal/SofiaSans-Italic\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Normal/SofiaSans-Italic\[wght\].ttf

echo "DONE!"