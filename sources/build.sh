#!/bin/bash
set -e

echo "\n[INFO] Starting build script"
echo "[INFO] Generating variable fonts"
echo "[INFO]   Making 'fonts/variable' directory if it doesn't already exist"
mkdir -p ../fonts/variable

glyphsSource="Sofia_Sans_MM.glyphs Sofia_Sans_Italic_MM.glyphs"
outputDir="../fonts/variable"

for i in $glyphsSource; do
    echo "[TEST]   Queued source file: $i"
done

echo "[INFO]   Building Sofia Sans with Fontmake"
fontmake -g Sofia_Sans_ММ.glyphs -o variable \
    --output-path $outputDir/SofiaSansVF.ttf \
    --verbose ERROR

#echo "[INFO]   Building Sofia Sans Italic with Fontmake"
#fontmake -g Sofia_Sans_Italic_ММ.glyphs -o variable \
#    --output-path $outputDir/SofiaSansItalicVF.ttf \
#    --verbose ERROR

echo "[INFO] Removing build directories"
rm -rf master_ufo/ instance_ufo/
