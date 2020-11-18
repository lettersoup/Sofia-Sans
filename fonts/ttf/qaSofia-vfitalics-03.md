## Fontbakery report

Fontbakery version: 0.7.31

<details>
<summary><b>[6] SofiaSans-Italic[wdth,wght].ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Variable font weight coordinates must be multiples of 100.</summary>

* [com.google.fonts/check/varfont_weight_instances](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_weight_instances)
<pre>--- Rationale ---

The named instances on the weight axis of a variable font must have coordinates
that are multiples of 100 on the design space.


</pre>

* 🔥 **FAIL** Found a variable font instance with 'wght'=1.0. This should instead be a multiple of 100. [code: bad-coordinate]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check variable font instances have correct coordinate values</summary>

* [com.google.fonts/check/varfont_instance_coordinates](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_coordinates)

* 🔥 **FAIL** Instance "HairLine Italic" wght value is "1.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Further info can be found in our spec https://github.com/googlefonts/gf-docs/tree/master/Spec#axes

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check variable font instances have correct names</summary>

* [com.google.fonts/check/varfont_instance_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_names)

* 🔥 **FAIL** Following instances are not supported: 
	- HairLine Italic

Further info can be found in our spec https://github.com/googlefonts/gf-docs/tree/master/Spec#fvar-instances [code: bad-instance-names]

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
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 4 | 2 | 81 | 7 | 87 | 0 |
| 0% | 2% | 1% | 45% | 4% | 48% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
