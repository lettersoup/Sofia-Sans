#!/bin/sh
set -e
#source ../venv/bin/activate

echo "BUILDING SOFIA SANS CONDENSED FONTS"

gftools builder sofia-cond.yml

echo "Fonts Built!"

# echo "POST PROCESSING VFs"

# fonttools varLib.instancer ../../fonts/variable/Condensed/SofiaSansCondensed\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Condensed/SofiaSansCondensed\[wght\].ttf
# fonttools varLib.instancer ../../fonts/variable/Condensed/SofiaSansCondensed-Italic\[wght\].ttf  wght=100:900 --output ../../fonts/variable/Condensed/SofiaSansCondensed-Italic\[wght\].ttf


echo "POST PROCESSING OTFs"

otfs=$(ls ../../fonts/otf/Condensed/*.otf)
for otf in $otfs
do
    psautohint $otf;
done

echo "DONE!"