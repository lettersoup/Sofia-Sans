#!/bin/sh
set -e
#source ../venv/bin/activate

echo "BUILDING THE FONTS"

echo "ExtraCondensed"
gftools builder sofia-ext-cond.yml

echo "Condensed"
gftools builder sofia-cond.yml

echo "SemiCondensed"
gftools builder sofia-semi-cond.yml

echo "Normal"
gftools builder sofia-normal.yml

echo "POST PROCESSING VFs"

echo "Extra Condensed"
fonttools varLib.instancer ../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed\[wght\].ttf  wght=100:900 --output ../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed\[wght\].ttf
fonttools varLib.instancer ../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed-Italic\[wght\].ttf  wght=100:900 --output ../fonts/variable/Extra-Condensed/SofiaSansExtraCondensed-Italic\[wght\].ttf

echo "Condensed"
fonttools varLib.instancer ../fonts/variable/Condensed/SofiaSansCondensed\[wght\].ttf  wght=100:900 --output ../fonts/variable/Condensed/SofiaSansCondensed\[wght\].ttf
fonttools varLib.instancer ../fonts/variable/Condensed/SofiaSansCondensed-Italic\[wght\].ttf  wght=100:900 --output ../fonts/variable/Condensed/SofiaSansCondensed-Italic\[wght\].ttf

echo "Semi Condensed"
fonttools varLib.instancer ../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed\[wght\].ttf  wght=100:900 --output ../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed\[wght\].ttf
fonttools varLib.instancer ../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed-Italic\[wght\].ttf  wght=100:900 --output ../fonts/variable/Semi-Condensed/SofiaSansSemiCondensed-Italic\[wght\].ttf

echo "Normal"
fonttools varLib.instancer ../fonts/variable/Normal/SofiaSans\[wght\].ttf  wght=100:900 --output ../fonts/variable/Normal/SofiaSans\[wght\].ttf
fonttools varLib.instancer ../fonts/variable/Normal/SofiaSans-Italic\[wght\].ttf  wght=100:900 --output ../fonts/variable/Normal/SofiaSans-Italic\[wght\].ttf

echo "DONE!"