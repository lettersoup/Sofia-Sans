## Fontbakery report

Fontbakery version: 0.7.33

<details>
<summary><b>[11] SofiaSans[wdth,wght].ttf</b></summary>
<details>
<summary>💔 <b>ERROR:</b> Validate METADATA.pb axes values are within gf-axisregistry bounds. </summary>

* [com.google.fonts/check/metadata/gf-axisregistry_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/gf-axisregistry_bounds)
<pre>--- Rationale ---

Each axis range in a METADATA.pb file must be registered, and within the bounds
of the axis definition in the Google Fonts Axis Registry, available at
https://github.com/google/fonts/tree/master/axisregistry


</pre>

* 💔 **ERROR** Failed with AttributeError: 'NoneType' object has no attribute 'axes'

</details>
<details>
<summary>💔 <b>ERROR:</b> Validate METADATA.pb axes tags are defined in gf-axisregistry. </summary>

* [com.google.fonts/check/metadata/gf-axisregistry_valid_tags](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/gf-axisregistry_valid_tags)
<pre>--- Rationale ---

Ensure all axes in a METADATA.pb file are registered in the Google Fonts Axis
Registry, available at https://github.com/google/fonts/tree/master/axisregistry

Why does Google Fonts have its own Axis Registry?

We support a superset of the OpenType axis registry axis set, and use
additional metadata for each axis. Axes present in a font file but not in this
registry will not function via our API. No variable font is expected to support
all of the axes here.

Any font foundry or distributor library that offers variable fonts has a
implicit, latent, de-facto axis registry, which can be extracted by scanning
the library for axes&#x27; tags, labels, and min/def/max values. While in 2016
Microsoft originally offered to include more axes in the OpenType 1.8
specification (github.com/microsoft/OpenTypeDesignVariationAxisTags), as of
August 2020, this effort has stalled. We hope more foundries and distributors
will publish documents like this that make their axes explicit, to encourage of
adoption of variable fonts throughout the industry, and provide source material
for a future update to the OpenType specification&#x27;s axis registry.


</pre>

* 💔 **ERROR** Failed with AttributeError: 'NoneType' object has no attribute 'axes'

</details>
<details>
<summary>💔 <b>ERROR:</b> Validate VF axes match the ones declared on METADATA.pb. </summary>

* [com.google.fonts/check/metadata/consistent_axis_enumeration](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/consistent_axis_enumeration)
<pre>--- Rationale ---

All font variation axes present in the font files must be properly declared on
METADATA.pb so that they can be served by the GFonts API.


</pre>

* 💔 **ERROR** Failed with AttributeError: 'NoneType' object has no attribute 'axes'

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

* 🔥 **FAIL** Instance "Hairline" wght value is "1.0". It should be "400.0" [code: bad-coordinate]
* 🔥 **FAIL** Further info can be found in our spec https://github.com/googlefonts/gf-docs/tree/master/Spec#axes

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check variable font instances have correct names</summary>

* [com.google.fonts/check/varfont_instance_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_names)

* 🔥 **FAIL** Following instances are not supported: 
	- Hairline

Further info can be found in our spec https://github.com/googlefonts/gf-docs/tree/master/Spec#fvar-instances [code: bad-instance-names]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Validate STAT particle names and values match the fallback names in GFAxisRegistry. </summary>

* [com.google.fonts/check/STAT/gf-axisregistry](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/STAT/gf-axisregistry)
<pre>--- Rationale ---

Check that particle names and values on STAT table match the fallback names in
each axis registry at the Google Fonts Axis Registry, available at
https://github.com/google/fonts/tree/master/axisregistry


</pre>

* 🔥 **FAIL** On the font variation axis 'wght', the name 'Hairline' is not among the expected ones (Thin, ExtraLight, Light, Regular, Medium, SemiBold, Bold, ExtraBold, Black) according to the Google Fonts Axis Registry. [code: invalid-name]
* 🔥 **FAIL** On the font variation axis 'wght', the name 'ExtraBlack' is not among the expected ones (Thin, ExtraLight, Light, Regular, Medium, SemiBold, Bold, ExtraBold, Black) according to the Google Fonts Axis Registry. [code: invalid-name]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos.sc [code: found-nested-components]

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

If designing with UFOs, (as of Oct 2020) ligature carets are not yet compiled
by ufo2ft, and therefore will not build via FontMake. See
googlefonts/ufo2ft/issues/329


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
| 3 | 6 | 2 | 84 | 8 | 91 | 0 |
| 2% | 3% | 1% | 43% | 4% | 47% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
