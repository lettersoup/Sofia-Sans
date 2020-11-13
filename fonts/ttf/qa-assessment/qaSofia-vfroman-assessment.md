## Fontbakery report

Fontbakery version: 0.7.31

<details>
<summary><b>[21] SofiaSans-VF.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking file is named canonically.</summary>

* [com.google.fonts/check/canonical_filename](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/canonical_filename)
<pre>--- Rationale ---

A font&#x27;s filename must be composed in the following manner:
&lt;familyname&gt;-&lt;stylename&gt;.ttf

- Nunito-Regular.ttf,
- Oswald-BoldItalic.ttf

Variable fonts must list the axis tags in alphabetical order in square brackets
and separated by commas:

- Roboto[wdth,wght].ttf
- Familyname-Italic[wght].ttf


</pre>

* 🔥 **FAIL** The file 'SofiaSans-VF.ttf' must be renamed to 'SofiaSans[wdth,wght].ttf' according to the Google Fonts naming policy for variable fonts. [code: bad-varfont-filename]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check `Google Fonts Latin Core` glyph coverage.</summary>

* [com.google.fonts/check/glyph_coverage](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage)
<pre>--- Rationale ---

Google Fonts expects that fonts in its collection support at least the minimal
set of characters defined in the `GF-latin-core` glyph-set.


</pre>

* 🔥 **FAIL** Missing required codepoints: 0x2215 (DIVISION SLASH) [code: missing-codepoints]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check license file has good copyright string.</summary>

* [com.google.fonts/check/license/OFL_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/license/OFL_copyright)
<pre>--- Rationale ---

An OFL.txt file&#x27;s first line should be the font copyright e.g:
&quot;Copyright 2019 The Montserrat Project Authors
(https://github.com/julietaula/montserrat)&quot;


</pre>

* 🔥 **FAIL** First line in license file does not match expected format: "copyright 2019 the sofia sans project authors (info@lettersoup.de)"

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)
<pre>--- Rationale ---

A known licensing description must be provided in the NameID 14 (LICENSE
DESCRIPTION) entries of the name table.

The source of truth for this check (to determine which license is in use) is a
file placed side-by-side to your font project including the licensing terms.

Depending on the chosen license, one of the following string snippets is
expected to be found on the NameID 13 (LICENSE DESCRIPTION) entries of the name
table:
- &quot;This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at: https://scripts.sil.org/OFL&quot;
- &quot;Licensed under the Apache License, Version 2.0&quot;
- &quot;Licensed under the Ubuntu Font Licence 1.0.&quot;


Currently accepted licenses are Apache or Open Font License.
For a small set of legacy families the Ubuntu Font License may be acceptable as
well.

When in doubt, please choose OFL for new font projects.


</pre>

* 🔥 **FAIL** Font lacks NameID 13 (LICENSE DESCRIPTION). A proper licensing entry must be set. [code: missing]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Is the Grid-fitting and Scan-conversion Procedure ('gasp') table set to optimize rendering?</summary>

* [com.google.fonts/check/gasp](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/gasp)
<pre>--- Rationale ---

Traditionally version 0 &#x27;gasp&#x27; tables were set so that font sizes below 8 ppem
had no grid fitting but did have antialiasing. From 9-16 ppem, just grid
fitting. And fonts above 17ppem had both antialiasing and grid fitting toggled
on. The use of accelerated graphics cards and higher resolution screens make
this approach obsolete. Microsoft&#x27;s DirectWrite pushed this even further with
much improved rendering built into the OS and apps.

In this scenario it makes sense to simply toggle all 4 flags ON for all font
sizes.


</pre>

* 🔥 **FAIL** Font is missing the 'gasp' table. Try exporting the font with autohinting enabled.
If you are dealing with an unhinted font, it can be fixed by running the fonts through the command 'gftools fix-nonhinting'
GFTools is available at https://pypi.org/project/gftools/ [code: lacks-gasp]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)

* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright 2019 The Sofia Sans Project Authors (nikoltchev@lettersoup.de)" [code: bad-notice-format]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Font enables smart dropout control in "prep" table instructions?</summary>

* [com.google.fonts/check/smart_dropout](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/smart_dropout)
<pre>--- Rationale ---

This setup is meant to ensure consistent rendering quality for fonts across all
devices (with different rendering/hinting capabilities).

Below is the snippet of instructions we expect to see in the fonts:
B8 01 FF    PUSHW 0x01FF
85          SCANCTRL (unconditinally turn on
                      dropout control mode)
B0 04       PUSHB 0x04
8D          SCANTYPE (enable smart dropout control)

&quot;Smart dropout control&quot; means activating rules 1, 2 and 5:
Rule 1: If a pixel&#x27;s center falls within the glyph outline,
        that pixel is turned on.
Rule 2: If a contour falls exactly on a pixel&#x27;s center,
        that pixel is turned on.
Rule 5: If a scan line between two adjacent pixel centers
        (either vertical or horizontal) is intersected
        by both an on-Transition contour and an off-Transition
        contour and neither of the pixels was already turned on
        by rules 1 and 2, turn on the pixel which is closer to
        the midpoint between the on-Transition contour and
        off-Transition contour. This is &quot;Smart&quot; dropout control.

For more detailed info (such as other rules not enabled in this snippet),
please refer to the TrueType Instruction Set documentation.


</pre>

* 🔥 **FAIL** The 'prep' table does not contain TrueType instructions enabling smart dropout control. To fix, export the font with autohinting enabled, or run ttfautohint on the font, or run the `gftools fix-nonhinting` script. [code: lacks-smart-dropout]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Variable font weight coordinates must be multiples of 100.</summary>

* [com.google.fonts/check/varfont_weight_instances](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_weight_instances)
<pre>--- Rationale ---

The named instances on the weight axis of a variable font must have coordinates
that are multiples of 100 on the design space.


</pre>

* 🔥 **FAIL** Found a variable font instance with 'wght'=130.43478393554688. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=178.2608642578125. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=221.7391357421875. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=260.86956787109375. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=308.6956481933594. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=452.63157653808594. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=478.94737243652344. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=573.6842041015625. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=684.2105255126953. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=794.7368469238281. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=121.7391357421875. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=165.21739196777344. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=213.04347229003906. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=234.78260803222656. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=304.3478240966797. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=378.2608642578125. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=431.5789489746094. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=463.15789794921875. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=552.6315765380859. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=663.1578979492188. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=768.4210510253906. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=873.6842041015625. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=121.7391357421875. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=152.17391967773438. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=221.7391357421875. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=286.95652770996094. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=343.47825622558594. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=391.3043518066406. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=447.36842346191406. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=531.5789489746094. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=621.0526275634766. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=747.3684234619141. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=836.8421020507812. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=121.7391357421875. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=143.47825622558594. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=178.2608642578125. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=208.69564819335938. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=273.9130401611328. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=313.04347229003906. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=360.86956787109375. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=431.5789489746094. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=489.4736785888672. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=584.2105255126953. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=705.2631530761719. This should instead be a multiple of 100. [code: bad-coordinate]
* 🔥 **FAIL** Found a variable font instance with 'wght'=794.7368469238281. This should instead be a multiple of 100. [code: bad-coordinate]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check variable font instances have correct coordinate values</summary>

* [com.google.fonts/check/varfont_instance_coordinates](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_coordinates)

* 🔥 **FAIL** Instance "HairLine" wght value is "100.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Thin" wght value is "130.43478393554688". It should be "100.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "UltraLight" wght value is "178.2608642578125". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "ExtraLight" wght value is "221.7391357421875". It should be "200.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Light" wght value is "260.86956787109375". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiLight" wght value is "308.6956481933594". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Medium" wght value is "452.63157653808594". It should be "500.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiBold" wght value is "478.94737243652344". It should be "600.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Bold" wght value is "573.6842041015625". It should be "700.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "ExtraBold" wght value is "684.2105255126953". It should be "800.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Black" wght value is "794.7368469238281". It should be "900.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Heavy" wght value is "900.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "HairLine" wght value is "100.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Thin" wght value is "121.7391357421875". It should be "100.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "UltraLight" wght value is "165.21739196777344". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "ExtraLight" wght value is "213.04347229003906". It should be "200.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Light" wght value is "234.78260803222656". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiLight" wght value is "304.3478240966797". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Regular" wght value is "378.2608642578125". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Medium" wght value is "431.5789489746094". It should be "500.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiBold" wght value is "463.15789794921875". It should be "600.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Bold" wght value is "552.6315765380859". It should be "700.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "ExtraBold" wght value is "663.1578979492188". It should be "800.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Black" wght value is "768.4210510253906". It should be "900.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Heavy" wght value is "873.6842041015625". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "HairLine" wght value is "100.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Thin" wght value is "121.7391357421875". It should be "100.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "UltraLight" wght value is "152.17391967773438". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Light" wght value is "221.7391357421875". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiLight" wght value is "286.95652770996094". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Regular" wght value is "343.47825622558594". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Medium" wght value is "391.3043518066406". It should be "500.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiBold" wght value is "447.36842346191406". It should be "600.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Bold" wght value is "531.5789489746094". It should be "700.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "ExtraBold" wght value is "621.0526275634766". It should be "800.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Black" wght value is "747.3684234619141". It should be "900.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Heavy" wght value is "836.8421020507812". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "HairLine" wght value is "100.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Thin" wght value is "121.7391357421875". It should be "100.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "UltraLight" wght value is "143.47825622558594". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "ExtraLight" wght value is "178.2608642578125". It should be "200.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Light" wght value is "208.69564819335938". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiLight" wght value is "273.9130401611328". It should be "300.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Regular" wght value is "313.04347229003906". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Medium" wght value is "360.86956787109375". It should be "500.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "SemiBold" wght value is "431.5789489746094". It should be "600.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Bold" wght value is "489.4736785888672". It should be "700.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "ExtraBold" wght value is "584.2105255126953". It should be "800.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Black" wght value is "705.2631530761719". It should be "900.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "Heavy" wght value is "794.7368469238281". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Instance "DSFix" wght value is "900.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Further info can be found in our spec https://github.com/googlefonts/gf-docs/tree/master/Spec#axes

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check variable font instances have correct names</summary>

* [com.google.fonts/check/varfont_instance_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_names)

* 🔥 **FAIL** Following instances are not supported: 
	- HairLine
	- UltraLight
	- SemiLight
	- Heavy
	- HairLine
	- UltraLight
	- SemiLight
	- Heavy
	- HairLine
	- UltraLight
	- SemiLight
	- Heavy
	- HairLine
	- UltraLight
	- SemiLight
	- Heavy
	- DSFix

Further info can be found in our spec https://github.com/googlefonts/gf-docs/tree/master/Spec#fvar-instances [code: bad-instance-names]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check variable font instances don't have duplicate names</summary>

* [com.google.fonts/check/varfont_duplicate_instance_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_duplicate_instance_names)
<pre>--- Rationale ---

This check&#x27;s purpose is to detect duplicate named instances names in a given
variable font.

Repeating instance names may be the result of instances for several VF axes
defined in `fvar`, but since currently only weight+italic tokens are allowed in
instance names as per GF specs, they ended up repeating.

Instead, only a base set of fonts for the most default representation of the
family can be defined through instances in the `fvar` table, all other
instances will have to be left to access through the `STAT` table.


</pre>

* 🔥 **FAIL** Following instances names are duplicate: 
	- HairLine
	- Thin
	- UltraLight
	- ExtraLight
	- Light
	- SemiLight
	- Regular
	- Medium
	- SemiBold
	- Bold
	- ExtraBold
	- Black
	- Heavy
	- HairLine
	- Thin
	- UltraLight
	- ExtraLight
	- Light
	- SemiLight
	- Regular
	- Medium
	- SemiBold
	- Bold
	- ExtraBold
	- Black
	- Heavy
	- HairLine
	- Thin
	- UltraLight
	- ExtraLight
	- Light
	- SemiLight
	- Regular
	- Medium
	- SemiBold
	- Bold
	- ExtraBold
	- Black
	- Heavy
 [code: duplicate-instance-names]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---

Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.


</pre>

* 🔥 **FAIL** The following unwanted font tables were found:
Table: MVAR
Reason: Produces a bug in DirectWrite which causes https://bugzilla.mozilla.org/show_bug.cgi?id=1492477, https://github.com/google/fonts/issues/2085

They can be removed with the gftools fix-unwanted-tables script.

</details>
<details>
<summary>🔥 <b>FAIL:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---

Microsoft Office 2013 and below products expect fonts to have a digital
signature declared in a DSIG table in order to implement OpenType features. The
EOL date for Microsoft Office 2013 products is 4/11/2023. This issue does not
impact Microsoft Office 2016 and above products.

This checks verifies that this signature is available in the font.

A fake signature is enough to address this issue. If needed, a dummy table can
be added to the font with the `gftools fix-dsig` script available at
https://github.com/googlefonts/gftools

Reference: https://github.com/googlefonts/fontbakery/issues/1845


</pre>

* 🔥 **FAIL** This font lacks a digital signature (DSIG table). Some applications may require one (even if only a dummy placeholder) in order to work properly. You can add a DSIG table by running the `gftools fix-dsig` script. [code: lacks-signature]

</details>
<details>
<summary>🔥 <b>FAIL:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---

The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.

But Dave Crossland suggested that we should enforce a required value of 700 in
this case.


</pre>

* 🔥 **FAIL** The "wght" axis coordinate of the "Bold" instance must be 700. Got 573.6842041015625 instead. [code: not-700]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
<pre>--- Rationale ---

Microsoft keeps a list of font vendors and their respective contact info. This
list is updated regularly and is indexed by a 4-char &quot;Vendor ID&quot; which is
stored in the achVendID field of the OS/2 table.

Registering your ID is not mandatory, but it is a good practice since some
applications may display the type designer / type foundry contact info on some
dialog and also because that info will be visible on Microsoft&#x27;s website:

https://docs.microsoft.com/en-us/typography/vendors/

This check verifies whether or not a given font&#x27;s vendor ID is registered in
that list or if it has some of the default values used by the most common font
editors.

Each new FontBakery release includes a cached copy of that list of vendor IDs.
If you registered recently, you&#x27;re safe to ignore warnings emitted by this
check, since your ID will soon be included in one of our upcoming releases.


</pre>

* ⚠ **WARN** OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx
 [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.

If using GlyphsApp, ligature carets can be set directly on canvas by accessing
the `Glyph -&gt; Set Anchors` menu option or by pressing the `Cmd+U` keyboard
shortcut.


</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* ⚠ **WARN** OS/2 sTypoLineGap is not equal to 0. [code: OS/2]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class)</summary>

* [com.google.fonts/check/gdef_spacing_marks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_spacing_marks)
<pre>--- Rationale ---

Glyphs in the GDEF mark glyph class should be non-spacing.
Spacing glyphs in the GDEF mark glyph class may have incorrect anchor
positioning that was only intended for building composite glyphs during design.


</pre>

* ⚠ **WARN** The following spacing glyphs may be in the GDEF mark glyph class by mistake:
	 dieresistonos, dieresistonos.sc, doublegravecomb, doublegravecomb.case, doublegravecomb.sc, firsttonechinesecomb, firsttonechinesecomb.case, firsttonechinesecomb.sc, halfringleftcomb, halfringleftcomb.case and 7 more. [code: spacing-mark-glyphs]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check mark characters are in GDEF mark glyph class</summary>

* [com.google.fonts/check/gdef_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_mark_chars)
<pre>--- Rationale ---

Mark characters should be in the GDEF mark glyph class.


</pre>

* ⚠ **WARN** The following mark characters could be in the GDEF mark glyph class:
	 U+0335 and U+0336 [code: mark-chars]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check GDEF mark glyph class doesn't have characters that are not marks)</summary>

* [com.google.fonts/check/gdef_non_mark_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gdef.html#com.google.fonts/check/gdef_non_mark_chars)
<pre>--- Rationale ---

Glyphs in the GDEF mark glyph class become non-spacing and may be repositioned
if they have mark anchors.
Only combining mark glyphs should be in that class. Any non-mark glyph must not
be in that class, in particular spacing glyphs.


</pre>

* ⚠ **WARN** The following non-mark characters should not be in the GDEF mark glyph class:
	 U+02BC, U+0384 and U+0385 [code: non-mark-chars]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 14 | 7 | 79 | 6 | 75 | 0 |
| 0% | 8% | 4% | 44% | 3% | 41% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
