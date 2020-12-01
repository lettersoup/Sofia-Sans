## Fontbakery report

Fontbakery version: 0.7.33

<details>
<summary><b>[7] SofiaSans-Black.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-141.0,-26.0>--<48.0,341.0>> -> L<<48.0,341.0>--<218.0,686.0>>
	* fraction: L<<360.0,681.0>--<173.0,318.0>> -> L<<173.0,318.0>--<1.0,-31.0>>
	* onehalf: L<<356.0,-26.0>--<545.0,341.0>> -> L<<545.0,341.0>--<715.0,686.0>>
	* onehalf: L<<857.0,681.0>--<669.0,318.0>> -> L<<669.0,318.0>--<498.0,-31.0>>
	* onequarter: L<<356.0,-26.0>--<545.0,341.0>> -> L<<545.0,341.0>--<715.0,686.0>>
	* onequarter: L<<857.0,681.0>--<669.0,318.0>> -> L<<669.0,318.0>--<498.0,-31.0>>
	* percent: L<<219.0,17.0>--<420.0,351.0>> -> L<<420.0,351.0>--<590.0,646.0>>
	* percent: L<<732.0,639.0>--<542.0,325.0>> -> L<<542.0,325.0>--<360.0,9.0>>
	* perthousand: L<<219.0,17.0>--<420.0,351.0>> -> L<<420.0,351.0>--<590.0,646.0>>
	* perthousand: L<<732.0,639.0>--<542.0,325.0>> -> L<<542.0,325.0>--<360.0,9.0>> and 7 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* Euro: L<<447.0,221.0>--<576.0,222.0>>
	* Euro: L<<576.0,436.0>--<446.0,437.0>>
	* G: L<<592.0,429.0>--<454.0,430.0>>
	* Gbreve: L<<592.0,429.0>--<454.0,430.0>>
	* Gdotaccent: L<<592.0,429.0>--<454.0,430.0>>
	* c.sc: L<<541.0,334.0>--<408.0,335.0>>
	* cacute.sc: L<<541.0,334.0>--<408.0,335.0>>
	* ccaron.sc: L<<541.0,334.0>--<408.0,335.0>>
	* ccedilla.sc: L<<541.0,334.0>--<408.0,335.0>>
	* cdotaccent.sc: L<<541.0,334.0>--<408.0,335.0>> and 9 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-BlackItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* .notdef: X=511.5,Y=657.0 (should be at cap-height 655?)
	* Aring: X=394.0,Y=799.0 (should be at ascender 800?)
	* Atilde: X=254.0,Y=802.0 (should be at ascender 800?)
	* Lcaron: X=458.5,Y=654.0 (should be at cap-height 655?)
	* Ntilde: X=281.0,Y=802.0 (should be at ascender 800?)
	* Otilde: X=274.0,Y=802.0 (should be at ascender 800?)
	* acircumflex: X=220.0,Y=653.0 (should be at cap-height 655?)
	* ecircumflex: X=216.0,Y=653.0 (should be at cap-height 655?)
	* icircumflex: X=77.0,Y=653.0 (should be at cap-height 655?)
	* ocircumflex: X=215.0,Y=653.0 (should be at cap-height 655?) and 79 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-166.0,-26.0>--<66.0,341.0>> -> L<<66.0,341.0>--<277.0,686.0>>
	* fraction: L<<416.0,681.0>--<186.0,318.0>> -> L<<186.0,318.0>--<-27.0,-31.0>>
	* onehalf: L<<306.0,-26.0>--<537.0,341.0>> -> L<<537.0,341.0>--<748.0,686.0>>
	* onehalf: L<<887.0,681.0>--<657.0,318.0>> -> L<<657.0,318.0>--<445.0,-31.0>>
	* onequarter: L<<306.0,-26.0>--<537.0,341.0>> -> L<<537.0,341.0>--<748.0,686.0>>
	* onequarter: L<<887.0,681.0>--<657.0,318.0>> -> L<<657.0,318.0>--<445.0,-31.0>>
	* percent: L<<261.0,17.0>--<463.0,351.0>> -> L<<463.0,351.0>--<633.0,646.0>>
	* percent: L<<775.0,639.0>--<585.0,325.0>> -> L<<585.0,325.0>--<402.0,9.0>>
	* perthousand: L<<261.0,17.0>--<463.0,351.0>> -> L<<463.0,351.0>--<633.0,646.0>>
	* perthousand: L<<775.0,639.0>--<585.0,325.0>> -> L<<585.0,325.0>--<402.0,9.0>> and 6 more. [code: found-colinear-vectors]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-Bold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-146.0,-21.0>--<41.0,348.0>> -> L<<41.0,348.0>--<204.0,681.0>>
	* fraction: L<<310.0,676.0>--<130.0,322.0>> -> L<<130.0,322.0>--<-40.0,-26.0>>
	* onehalf: L<<303.0,-21.0>--<489.0,348.0>> -> L<<489.0,348.0>--<653.0,681.0>>
	* onehalf: L<<758.0,676.0>--<578.0,322.0>> -> L<<578.0,322.0>--<408.0,-26.0>>
	* onequarter: L<<303.0,-21.0>--<489.0,348.0>> -> L<<489.0,348.0>--<653.0,681.0>>
	* onequarter: L<<758.0,676.0>--<578.0,322.0>> -> L<<578.0,322.0>--<408.0,-26.0>>
	* percent: L<<231.0,14.0>--<430.0,346.0>> -> L<<430.0,346.0>--<605.0,648.0>>
	* percent: L<<715.0,642.0>--<527.0,330.0>> -> L<<527.0,330.0>--<340.0,8.0>>
	* perthousand: L<<231.0,14.0>--<430.0,346.0>> -> L<<430.0,346.0>--<605.0,648.0>>
	* perthousand: L<<715.0,642.0>--<527.0,330.0>> -> L<<527.0,330.0>--<340.0,8.0>> and 7 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* oe.sc: L<<386.0,542.0>--<724.0,541.0>>
	* trademark: L<<677.0,360.0>--<676.0,539.0>>
	* uni2196: L<<291.0,413.0>--<293.0,129.0>>
	* uni2196: L<<647.0,483.0>--<363.0,485.0>>
	* uni2197: L<<613.0,130.0>--<615.0,414.0>> and uni2198: L<<260.0,174.0>--<544.0,172.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] SofiaSans-BoldItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* Abreve: X=379.0,Y=798.0 (should be at ascender 800?)
	* Aring: X=374.0,Y=799.0 (should be at ascender 800?)
	* Atilde: X=436.0,Y=801.0 (should be at ascender 800?)
	* Gbreve: X=414.0,Y=798.0 (should be at ascender 800?)
	* Ntilde: X=473.0,Y=801.0 (should be at ascender 800?)
	* Otilde: X=467.0,Y=801.0 (should be at ascender 800?)
	* a: X=408.0,Y=494.0 (should be at x-height 492?)
	* atilde: X=358.5,Y=657.0 (should be at cap-height 655?)
	* atilde: X=423.0,Y=655.5 (should be at cap-height 655?)
	* g: X=408.0,Y=494.0 (should be at x-height 492?) and 72 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-156.0,-21.0>--<49.0,348.0>> -> L<<49.0,348.0>--<230.0,681.0>>
	* fraction: L<<333.0,676.0>--<135.0,322.0>> -> L<<135.0,322.0>--<-53.0,-26.0>>
	* onehalf: L<<276.0,-21.0>--<481.0,348.0>> -> L<<481.0,348.0>--<662.0,681.0>>
	* onehalf: L<<765.0,676.0>--<567.0,322.0>> -> L<<567.0,322.0>--<379.0,-26.0>>
	* onequarter: L<<276.0,-21.0>--<481.0,348.0>> -> L<<481.0,348.0>--<662.0,681.0>>
	* onequarter: L<<765.0,676.0>--<567.0,322.0>> -> L<<567.0,322.0>--<379.0,-26.0>>
	* percent: L<<266.0,14.0>--<465.0,345.0>> -> L<<465.0,345.0>--<641.0,648.0>>
	* percent: L<<750.0,642.0>--<563.0,331.0>> -> L<<563.0,331.0>--<375.0,8.0>>
	* perthousand: L<<266.0,14.0>--<465.0,345.0>> -> L<<465.0,345.0>--<641.0,648.0>>
	* perthousand: L<<750.0,642.0>--<563.0,331.0>> -> L<<563.0,331.0>--<375.0,8.0>> and 6 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* uni0446: B<<462.0,125.0>-<460.0,110.0>-<458.0,95.0>>/L<<458.0,95.0>--<458.0,96.0>> = 7.594643368591447 [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[9] SofiaSans-ExtraBlack.ttf</b></summary>
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

* 🔥 **FAIL** Style name used in "SofiaSans-ExtraBlack.ttf" is not canonical. You should rebuild the font using any of the following style names: "Thin", "ExtraLight", "Light", "Regular", "Medium", "SemiBold", "Bold", "ExtraBold", "Black", "Thin Italic", "ExtraLight Italic", "Light Italic", "Italic", "Medium Italic", "SemiBold Italic", "Bold Italic", "ExtraBold Italic", "Black Italic". [code: bad-static-filename]

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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Sofia Sans ExtraBlack' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-139.0,-28.0>--<51.0,338.0>> -> L<<51.0,338.0>--<224.0,688.0>>
	* fraction: L<<384.0,683.0>--<193.0,316.0>> -> L<<193.0,316.0>--<21.0,-33.0>>
	* onehalf: L<<381.0,-28.0>--<571.0,338.0>> -> L<<571.0,338.0>--<744.0,688.0>>
	* onehalf: L<<904.0,683.0>--<713.0,316.0>> -> L<<713.0,316.0>--<541.0,-33.0>>
	* onequarter: L<<381.0,-28.0>--<571.0,338.0>> -> L<<571.0,338.0>--<744.0,688.0>>
	* onequarter: L<<904.0,683.0>--<713.0,316.0>> -> L<<713.0,316.0>--<541.0,-33.0>>
	* percent: L<<213.0,18.0>--<416.0,354.0>> -> L<<416.0,354.0>--<583.0,645.0>>
	* percent: L<<740.0,637.0>--<549.0,322.0>> -> L<<549.0,322.0>--<369.0,10.0>>
	* perthousand: L<<213.0,18.0>--<416.0,354.0>> -> L<<416.0,354.0>--<583.0,645.0>>
	* perthousand: L<<740.0,637.0>--<549.0,322.0>> -> L<<549.0,322.0>--<369.0,10.0>> and 6 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* Euro: L<<430.0,229.0>--<576.0,230.0>>
	* Euro: L<<576.0,429.0>--<430.0,430.0>>
	* G: L<<602.0,426.0>--<445.0,427.0>>
	* Gbreve: L<<602.0,426.0>--<445.0,427.0>>
	* Gdotaccent: L<<602.0,426.0>--<445.0,427.0>>
	* c.sc: L<<402.0,219.0>--<555.0,220.0>>
	* c.sc: L<<554.0,330.0>--<403.0,331.0>>
	* cacute.sc: L<<402.0,219.0>--<555.0,220.0>>
	* cacute.sc: L<<554.0,330.0>--<403.0,331.0>>
	* ccaron.sc: L<<402.0,219.0>--<555.0,220.0>> and 18 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-ExtraBlackItalic.ttf</b></summary>
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

* 🔥 **FAIL** Style name used in "SofiaSans-ExtraBlackItalic.ttf" is not canonical. You should rebuild the font using any of the following style names: "Thin", "ExtraLight", "Light", "Regular", "Medium", "SemiBold", "Bold", "ExtraBold", "Black", "Thin Italic", "ExtraLight Italic", "Light Italic", "Italic", "Medium Italic", "SemiBold Italic", "Bold Italic", "ExtraBold Italic", "Black Italic". [code: bad-static-filename]

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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-170.0,-28.0>--<74.0,338.0>> -> L<<74.0,338.0>--<299.0,688.0>>
	* fraction: L<<455.0,683.0>--<210.0,316.0>> -> L<<210.0,316.0>--<-14.0,-33.0>>
	* onehalf: L<<320.0,-28.0>--<564.0,338.0>> -> L<<564.0,338.0>--<789.0,688.0>>
	* onehalf: L<<945.0,683.0>--<700.0,316.0>> -> L<<700.0,316.0>--<476.0,-33.0>>
	* onequarter: L<<320.0,-28.0>--<564.0,338.0>> -> L<<564.0,338.0>--<789.0,688.0>>
	* onequarter: L<<945.0,683.0>--<700.0,316.0>> -> L<<700.0,316.0>--<476.0,-33.0>>
	* percent: L<<259.0,18.0>--<462.0,354.0>> -> L<<462.0,354.0>--<629.0,645.0>>
	* percent: L<<786.0,637.0>--<595.0,322.0>> -> L<<595.0,322.0>--<415.0,10.0>>
	* perthousand: L<<259.0,18.0>--<462.0,354.0>> -> L<<462.0,354.0>--<629.0,645.0>>
	* perthousand: L<<786.0,637.0>--<595.0,322.0>> -> L<<595.0,322.0>--<415.0,10.0>> and 6 more. [code: found-colinear-vectors]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-ExtraBold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-143.0,-24.0>--<45.0,344.0>> -> L<<45.0,344.0>--<211.0,684.0>>
	* fraction: L<<335.0,679.0>--<151.0,320.0>> -> L<<151.0,320.0>--<-20.0,-29.0>>
	* onehalf: L<<329.0,-24.0>--<517.0,344.0>> -> L<<517.0,344.0>--<684.0,684.0>>
	* onehalf: L<<807.0,679.0>--<624.0,320.0>> -> L<<624.0,320.0>--<453.0,-29.0>>
	* onequarter: L<<329.0,-24.0>--<517.0,344.0>> -> L<<517.0,344.0>--<684.0,684.0>>
	* onequarter: L<<807.0,679.0>--<624.0,320.0>> -> L<<624.0,320.0>--<453.0,-29.0>>
	* percent: L<<225.0,15.0>--<425.0,348.0>> -> L<<425.0,348.0>--<598.0,647.0>>
	* percent: L<<724.0,640.0>--<535.0,328.0>> -> L<<535.0,328.0>--<350.0,9.0>>
	* perthousand: L<<225.0,15.0>--<425.0,348.0>> -> L<<425.0,348.0>--<598.0,647.0>>
	* perthousand: L<<724.0,640.0>--<535.0,328.0>> -> L<<535.0,328.0>--<350.0,9.0>> and 6 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* c.sc: L<<412.0,206.0>--<527.0,207.0>>
	* c.sc: L<<527.0,339.0>--<412.0,340.0>>
	* cacute.sc: L<<412.0,206.0>--<527.0,207.0>>
	* cacute.sc: L<<527.0,339.0>--<412.0,340.0>>
	* ccaron.sc: L<<412.0,206.0>--<527.0,207.0>>
	* ccaron.sc: L<<527.0,339.0>--<412.0,340.0>>
	* ccedilla.sc: L<<412.0,206.0>--<527.0,207.0>>
	* ccedilla.sc: L<<527.0,339.0>--<412.0,340.0>>
	* cdotaccent.sc: L<<412.0,206.0>--<527.0,207.0>>
	* cdotaccent.sc: L<<527.0,339.0>--<412.0,340.0>> and 11 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] SofiaSans-ExtraBoldItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* .notdef: X=128.0,Y=654.0 (should be at cap-height 655?)
	* .notdef: X=510.0,Y=654.0 (should be at cap-height 655?)
	* Aring: X=384.0,Y=799.0 (should be at ascender 800?)
	* Aring: X=400.5,Y=656.0 (should be at cap-height 655?)
	* IJ: X=294.0,Y=0.5 (should be at baseline 0?)
	* J: X=25.0,Y=0.5 (should be at baseline 0?)
	* Lcaron: X=449.0,Y=653.5 (should be at cap-height 655?)
	* Q: X=399.0,Y=-2.0 (should be at baseline 0?)
	* Uring: X=542.0,Y=801.0 (should be at ascender 800?)
	* a: X=415.0,Y=497.0 (should be at x-height 495?) and 89 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-161.0,-24.0>--<57.0,345.0>> -> L<<57.0,345.0>--<253.0,684.0>>
	* fraction: L<<374.0,679.0>--<160.0,320.0>> -> L<<160.0,320.0>--<-40.0,-29.0>>
	* onehalf: L<<291.0,-24.0>--<509.0,345.0>> -> L<<509.0,345.0>--<705.0,684.0>>
	* onehalf: L<<826.0,679.0>--<612.0,320.0>> -> L<<612.0,320.0>--<412.0,-29.0>>
	* onequarter: L<<291.0,-24.0>--<509.0,345.0>> -> L<<509.0,345.0>--<705.0,684.0>>
	* onequarter: L<<826.0,679.0>--<612.0,320.0>> -> L<<612.0,320.0>--<412.0,-29.0>>
	* percent: L<<264.0,15.0>--<464.0,348.0>> -> L<<464.0,348.0>--<637.0,647.0>>
	* percent: L<<762.0,640.0>--<574.0,328.0>> -> L<<574.0,328.0>--<389.0,9.0>>
	* perthousand: L<<264.0,15.0>--<464.0,348.0>> -> L<<464.0,348.0>--<637.0,647.0>>
	* perthousand: L<<762.0,640.0>--<574.0,328.0>> -> L<<574.0,328.0>--<389.0,9.0>> and 6 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* uni0446: B<<472.0,127.0>-<471.0,120.0>-<470.0,113.0>>/L<<470.0,113.0>--<470.0,114.0>> = 8.13010235415596 and uni0449: B<<744.0,127.0>-<743.0,120.0>-<742.0,113.0>>/L<<742.0,113.0>--<742.0,114.0>> = 8.13010235415596 [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[8] SofiaSans-ExtraLight.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Sofia Sans ExtraLight' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-127.0,-16.0>--<50.0,337.0>> -> L<<50.0,337.0>--<218.0,674.0>>
	* fraction: L<<250.0,672.0>--<78.0,329.0>> -> L<<78.0,329.0>--<-94.0,-18.0>>
	* onehalf: L<<239.0,-16.0>--<416.0,337.0>> -> L<<416.0,337.0>--<583.0,674.0>>
	* onehalf: L<<616.0,672.0>--<444.0,329.0>> -> L<<444.0,329.0>--<271.0,-18.0>>
	* onequarter: L<<239.0,-16.0>--<416.0,337.0>> -> L<<416.0,337.0>--<583.0,674.0>>
	* onequarter: L<<616.0,672.0>--<444.0,329.0>> -> L<<444.0,329.0>--<271.0,-18.0>>
	* percent: L<<252.0,5.0>--<446.0,335.0>> -> L<<446.0,335.0>--<631.0,652.0>>
	* percent: L<<667.0,650.0>--<479.0,331.0>> -> L<<479.0,331.0>--<287.0,3.0>>
	* perthousand: L<<252.0,5.0>--<446.0,335.0>> -> L<<446.0,335.0>--<631.0,652.0>>
	* perthousand: L<<667.0,650.0>--<479.0,331.0>> -> L<<479.0,331.0>--<287.0,3.0>> and 6 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* Psi: L<<375.0,5.0>--<376.0,187.0>>
	* Psi: L<<410.0,650.0>--<409.0,219.0>>
	* exclam: L<<121.0,650.0>--<119.0,175.0>>
	* exclam: L<<87.0,175.0>--<85.0,650.0>>
	* exclamdown.case: L<<119.0,479.0>--<121.0,4.0>>
	* exclamdown.case: L<<85.0,4.0>--<87.0,479.0>>
	* exclamdown: L<<119.0,305.0>--<121.0,-170.0>>
	* exclamdown: L<<85.0,-170.0>--<87.0,305.0>>
	* psi.sc: L<<329.0,183.0>--<330.0,525.0>>
	* uni2463: L<<511.0,227.0>--<512.0,389.0>> and uni2779: L<<512.0,389.0>--<511.0,227.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] SofiaSans-ExtraLightItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-148.0,-16.0>--<66.0,338.0>> -> L<<66.0,338.0>--<271.0,674.0>>
	* fraction: L<<303.0,672.0>--<95.0,329.0>> -> L<<95.0,329.0>--<-116.0,-18.0>>
	* onehalf: L<<211.0,-16.0>--<425.0,338.0>> -> L<<425.0,338.0>--<630.0,674.0>>
	* onehalf: L<<662.0,672.0>--<453.0,329.0>> -> L<<453.0,329.0>--<243.0,-18.0>>
	* onequarter: L<<211.0,-16.0>--<425.0,338.0>> -> L<<425.0,338.0>--<630.0,674.0>>
	* onequarter: L<<662.0,672.0>--<453.0,329.0>> -> L<<453.0,329.0>--<243.0,-18.0>>
	* percent: L<<274.0,5.0>--<468.0,335.0>> -> L<<468.0,335.0>--<654.0,652.0>>
	* percent: L<<690.0,650.0>--<502.0,331.0>> -> L<<502.0,331.0>--<310.0,3.0>>
	* perthousand: L<<274.0,5.0>--<468.0,335.0>> -> L<<468.0,335.0>--<654.0,652.0>>
	* perthousand: L<<690.0,650.0>--<502.0,331.0>> -> L<<502.0,331.0>--<310.0,3.0>> and 7 more. [code: found-colinear-vectors]

</details>
<br>
</details>
<details>
<summary><b>[9] SofiaSans-Hairline.ttf</b></summary>
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

* 🔥 **FAIL** Style name used in "SofiaSans-Hairline.ttf" is not canonical. You should rebuild the font using any of the following style names: "Thin", "ExtraLight", "Light", "Regular", "Medium", "SemiBold", "Bold", "ExtraBold", "Black", "Thin Italic", "ExtraLight Italic", "Light Italic", "Italic", "Medium Italic", "SemiBold Italic", "Bold Italic", "ExtraBold Italic", "Black Italic". [code: bad-static-filename]

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
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '1' when it should be '400'. [code: bad-value]

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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-119.0,-15.0>--<55.0,332.0>> -> L<<55.0,332.0>--<226.0,672.0>>
	* fraction: L<<243.0,672.0>--<72.0,331.0>> -> L<<72.0,331.0>--<-102.0,-16.0>>
	* k: L<<112.0,188.0>--<199.0,275.0>> -> L<<199.0,275.0>--<398.0,476.0>>
	* kgreenlandic: L<<112.0,188.0>--<199.0,275.0>> -> L<<199.0,275.0>--<398.0,476.0>>
	* onehalf: L<<231.0,-15.0>--<405.0,332.0>> -> L<<405.0,332.0>--<576.0,672.0>>
	* onehalf: L<<593.0,672.0>--<422.0,331.0>> -> L<<422.0,331.0>--<248.0,-16.0>>
	* onequarter: L<<231.0,-15.0>--<405.0,332.0>> -> L<<405.0,332.0>--<576.0,672.0>>
	* onequarter: L<<593.0,672.0>--<422.0,331.0>> -> L<<422.0,331.0>--<248.0,-16.0>>
	* percent: L<<256.0,3.0>--<449.0,333.0>> -> L<<449.0,333.0>--<636.0,653.0>>
	* percent: L<<654.0,652.0>--<466.0,330.0>> -> L<<466.0,330.0>--<274.0,2.0>> and 11 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* Psi: L<<383.0,211.0>--<384.0,652.0>>
	* Psi: L<<400.0,652.0>--<399.0,211.0>>
	* exclam: L<<107.0,652.0>--<106.0,163.0>>
	* exclam: L<<91.0,163.0>--<90.0,652.0>>
	* exclamdown.case: L<<106.0,491.0>--<107.0,2.0>>
	* exclamdown.case: L<<90.0,2.0>--<91.0,491.0>>
	* exclamdown: L<<106.0,315.0>--<107.0,-174.0>>
	* exclamdown: L<<90.0,-174.0>--<91.0,315.0>>
	* psi.sc: L<<332.0,173.0>--<333.0,524.0>>
	* psi.sc: L<<349.0,524.0>--<348.0,173.0>> and sigma: L<<513.0,461.0>--<342.0,462.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[9] SofiaSans-HairlineItalic.ttf</b></summary>
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

* 🔥 **FAIL** Style name used in "SofiaSans-HairlineItalic.ttf" is not canonical. You should rebuild the font using any of the following style names: "Thin", "ExtraLight", "Light", "Regular", "Medium", "SemiBold", "Bold", "ExtraBold", "Black", "Thin Italic", "ExtraLight Italic", "Light Italic", "Italic", "Medium Italic", "SemiBold Italic", "Bold Italic", "ExtraBold Italic", "Black Italic". [code: bad-static-filename]

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
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)
<pre>--- Rationale ---

Google Fonts expects variable fonts, static ttfs and static otfs to have
differing OS/2 usWeightClass values.

For Variable Fonts, Thin-Black must be 100-900
For static ttfs, Thin-Black can be 100-900 or 250-900
For static otfs, Thin-Black must be 250-900

If static otfs are set lower than 250, text may appear blurry in legacy Windows
applications.

Glyphsapp users can change the usWeightClass value of an instance by adding a
&#x27;weightClass&#x27; customParameter.


</pre>

* 🔥 **FAIL** OS/2 usWeightClass is '1' when it should be '400'. [code: bad-value]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: TYPOGRAPHIC_SUBFAMILY_NAME entries.</summary>

* [com.google.fonts/check/name/typographicsubfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/typographicsubfamilyname)

* 🔥 **FAIL** TYPOGRAPHIC_SUBFAMILY_NAME entry for Win "Hairline Italic" must be "Italic". Please note, since the font style is RIBBI, this record can be safely deleted. [code: bad-win-name]

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
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* Z: L<<12.0,15.0>--<459.0,551.0>> -> L<<459.0,551.0>--<531.0,638.0>>
	* Zacute: L<<12.0,15.0>--<459.0,551.0>> -> L<<459.0,551.0>--<531.0,638.0>>
	* Zcaron: L<<12.0,15.0>--<459.0,551.0>> -> L<<459.0,551.0>--<531.0,638.0>>
	* Zdotaccent: L<<12.0,15.0>--<459.0,551.0>> -> L<<459.0,551.0>--<531.0,638.0>>
	* Zeta: L<<12.0,15.0>--<459.0,551.0>> -> L<<459.0,551.0>--<531.0,638.0>>
	* a.sc: L<<272.0,512.0>--<227.0,431.0>> -> L<<227.0,431.0>--<82.0,169.0>>
	* aacute.sc: L<<272.0,512.0>--<227.0,431.0>> -> L<<227.0,431.0>--<82.0,169.0>>
	* abreve.sc: L<<272.0,512.0>--<227.0,431.0>> -> L<<227.0,431.0>--<82.0,169.0>>
	* acircumflex.sc: L<<272.0,512.0>--<227.0,431.0>> -> L<<227.0,431.0>--<82.0,169.0>>
	* adieresis.sc: L<<272.0,512.0>--<227.0,431.0>> -> L<<227.0,431.0>--<82.0,169.0>> and 28 more. [code: found-colinear-vectors]

</details>
<br>
</details>
<details>
<summary><b>[6] SofiaSans-Italic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-149.0,-18.0>--<36.0,353.0>> -> L<<36.0,353.0>--<194.0,678.0>>
	* fraction: L<<270.0,673.0>--<96.0,325.0>> -> L<<96.0,325.0>--<-73.0,-23.0>>
	* onehalf: L<<253.0,-18.0>--<438.0,353.0>> -> L<<438.0,353.0>--<596.0,678.0>>
	* onehalf: L<<672.0,673.0>--<498.0,325.0>> -> L<<498.0,325.0>--<329.0,-23.0>>
	* onequarter: L<<253.0,-18.0>--<438.0,353.0>> -> L<<438.0,353.0>--<596.0,678.0>>
	* onequarter: L<<672.0,673.0>--<498.0,325.0>> -> L<<498.0,325.0>--<329.0,-23.0>>
	* percent: L<<270.0,12.0>--<467.0,341.0>> -> L<<467.0,341.0>--<647.0,650.0>>
	* percent: L<<732.0,645.0>--<546.0,335.0>> -> L<<546.0,335.0>--<355.0,7.0>>
	* perthousand: L<<270.0,12.0>--<467.0,341.0>> -> L<<467.0,341.0>--<647.0,650.0>>
	* perthousand: L<<732.0,645.0>--<546.0,335.0>> -> L<<546.0,335.0>--<355.0,7.0>> and 7 more. [code: found-colinear-vectors]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-Light.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-135.0,-17.0>--<45.0,343.0>> -> L<<45.0,343.0>--<209.0,675.0>>
	* fraction: L<<257.0,673.0>--<85.0,328.0>> -> L<<85.0,328.0>--<-86.0,-20.0>>
	* g.ss02: L<<333.0,21.0>--<161.0,31.0>> -> L<<161.0,31.0>--<160.0,31.0>>
	* g: L<<333.0,21.0>--<161.0,31.0>> -> L<<161.0,31.0>--<160.0,31.0>>
	* gbreve: L<<333.0,21.0>--<161.0,31.0>> -> L<<161.0,31.0>--<160.0,31.0>>
	* gdotaccent: L<<333.0,21.0>--<161.0,31.0>> -> L<<161.0,31.0>--<160.0,31.0>>
	* onehalf: L<<247.0,-17.0>--<427.0,343.0>> -> L<<427.0,343.0>--<591.0,675.0>>
	* onehalf: L<<640.0,673.0>--<467.0,328.0>> -> L<<467.0,328.0>--<296.0,-20.0>>
	* onequarter: L<<247.0,-17.0>--<427.0,343.0>> -> L<<427.0,343.0>--<591.0,675.0>>
	* onequarter: L<<640.0,673.0>--<467.0,328.0>> -> L<<467.0,328.0>--<296.0,-20.0>> and 11 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* Psi: L<<367.0,7.0>--<368.0,179.0>>
	* Psi: L<<420.0,179.0>--<419.0,7.0>>
	* exclam: L<<136.0,648.0>--<133.0,188.0>>
	* exclam: L<<82.0,188.0>--<79.0,648.0>>
	* exclamdown.case: L<<133.0,466.0>--<136.0,6.0>>
	* exclamdown.case: L<<79.0,6.0>--<82.0,466.0>>
	* exclamdown: L<<133.0,295.0>--<136.0,-165.0>> and exclamdown: L<<79.0,-165.0>--<82.0,295.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[6] SofiaSans-LightItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-149.0,-17.0>--<54.0,344.0>> -> L<<54.0,344.0>--<241.0,675.0>>
	* fraction: L<<290.0,673.0>--<95.0,328.0>> -> L<<95.0,328.0>--<-99.0,-20.0>>
	* onehalf: L<<227.0,-17.0>--<430.0,344.0>> -> L<<430.0,344.0>--<617.0,675.0>>
	* onehalf: L<<666.0,673.0>--<471.0,328.0>> -> L<<471.0,328.0>--<276.0,-20.0>>
	* onequarter: L<<227.0,-17.0>--<430.0,344.0>> -> L<<430.0,344.0>--<617.0,675.0>>
	* onequarter: L<<666.0,673.0>--<471.0,328.0>> -> L<<471.0,328.0>--<276.0,-20.0>>
	* percent: L<<273.0,8.0>--<468.0,337.0>> -> L<<468.0,337.0>--<651.0,651.0>>
	* percent: L<<706.0,648.0>--<519.0,333.0>> -> L<<519.0,333.0>--<328.0,5.0>>
	* perthousand: L<<273.0,8.0>--<468.0,337.0>> -> L<<468.0,337.0>--<651.0,651.0>>
	* perthousand: L<<706.0,648.0>--<519.0,333.0>> -> L<<519.0,333.0>--<328.0,5.0>> and 7 more. [code: found-colinear-vectors]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-Medium.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-148.0,-19.0>--<38.0,351.0>> -> L<<38.0,351.0>--<197.0,679.0>>
	* fraction: L<<282.0,674.0>--<106.0,324.0>> -> L<<106.0,324.0>--<-63.0,-24.0>>
	* onehalf: L<<274.0,-19.0>--<459.0,351.0>> -> L<<459.0,351.0>--<619.0,679.0>>
	* onehalf: L<<704.0,674.0>--<528.0,324.0>> -> L<<528.0,324.0>--<358.0,-24.0>>
	* onequarter: L<<274.0,-19.0>--<459.0,351.0>> -> L<<459.0,351.0>--<619.0,679.0>>
	* onequarter: L<<704.0,674.0>--<528.0,324.0>> -> L<<528.0,324.0>--<358.0,-24.0>>
	* percent: L<<237.0,13.0>--<435.0,342.0>> -> L<<435.0,342.0>--<613.0,649.0>>
	* percent: L<<706.0,644.0>--<519.0,334.0>> -> L<<519.0,334.0>--<330.0,7.0>>
	* perthousand: L<<237.0,13.0>--<435.0,342.0>> -> L<<435.0,342.0>--<613.0,649.0>>
	* perthousand: L<<706.0,644.0>--<519.0,334.0>> -> L<<519.0,334.0>--<330.0,7.0>> and 7 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* four.tf: L<<389.0,211.0>--<390.0,425.0>>
	* onequarter: L<<757.0,148.0>--<758.0,275.0>>
	* t: L<<199.0,609.0>--<200.0,489.0>>
	* tbar: L<<199.0,609.0>--<200.0,489.0>>
	* tcaron: L<<199.0,609.0>--<200.0,489.0>>
	* threequarters: L<<746.0,148.0>--<747.0,275.0>>
	* uni0163: L<<199.0,609.0>--<200.0,489.0>>
	* uni021B: L<<199.0,609.0>--<200.0,489.0>> and uni043C: L<<155.0,236.0>--<154.0,11.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-MediumItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-151.0,-19.0>--<40.0,352.0>> -> L<<40.0,352.0>--<204.0,679.0>>
	* fraction: L<<288.0,674.0>--<107.0,324.0>> -> L<<107.0,324.0>--<-67.0,-24.0>>
	* onehalf: L<<259.0,-19.0>--<450.0,352.0>> -> L<<450.0,352.0>--<614.0,679.0>>
	* onehalf: L<<698.0,674.0>--<517.0,324.0>> -> L<<517.0,324.0>--<343.0,-24.0>>
	* onequarter: L<<259.0,-19.0>--<450.0,352.0>> -> L<<450.0,352.0>--<614.0,679.0>>
	* onequarter: L<<698.0,674.0>--<517.0,324.0>> -> L<<517.0,324.0>--<343.0,-24.0>>
	* percent: L<<269.0,13.0>--<467.0,342.0>> -> L<<467.0,342.0>--<645.0,650.0>>
	* percent: L<<737.0,644.0>--<551.0,334.0>> -> L<<551.0,334.0>--<361.0,7.0>>
	* perthousand: L<<269.0,13.0>--<467.0,342.0>> -> L<<467.0,342.0>--<645.0,650.0>>
	* perthousand: L<<737.0,644.0>--<551.0,334.0>> -> L<<551.0,334.0>--<361.0,7.0>> and 8 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* uni0446: B<<451.0,123.0>-<447.0,100.0>-<445.0,76.0>>/L<<445.0,76.0>--<445.0,77.0>> = 4.763641690726144 and uni0449: B<<734.0,123.0>-<730.0,101.0>-<728.0,76.0>>/L<<728.0,76.0>--<728.0,77.0>> = 4.573921259900818 [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-Regular.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-149.0,-18.0>--<36.0,353.0>> -> L<<36.0,353.0>--<194.0,678.0>>
	* fraction: L<<270.0,673.0>--<96.0,325.0>> -> L<<96.0,325.0>--<-73.0,-23.0>>
	* onehalf: L<<261.0,-18.0>--<446.0,353.0>> -> L<<446.0,353.0>--<604.0,678.0>>
	* onehalf: L<<680.0,673.0>--<506.0,325.0>> -> L<<506.0,325.0>--<337.0,-23.0>>
	* onequarter: L<<261.0,-18.0>--<446.0,353.0>> -> L<<446.0,353.0>--<604.0,678.0>>
	* onequarter: L<<680.0,673.0>--<506.0,325.0>> -> L<<506.0,325.0>--<337.0,-23.0>>
	* percent: L<<240.0,12.0>--<437.0,341.0>> -> L<<437.0,341.0>--<617.0,650.0>>
	* percent: L<<702.0,645.0>--<516.0,335.0>> -> L<<516.0,335.0>--<325.0,7.0>>
	* perthousand: L<<240.0,12.0>--<437.0,341.0>> -> L<<437.0,341.0>--<617.0,650.0>>
	* perthousand: L<<702.0,645.0>--<516.0,335.0>> -> L<<516.0,335.0>--<325.0,7.0>> and 6 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* t: L<<191.0,608.0>--<192.0,488.0>>
	* tbar: L<<191.0,608.0>--<192.0,488.0>>
	* tcaron: L<<191.0,608.0>--<192.0,488.0>>
	* uni0163: L<<191.0,608.0>--<192.0,488.0>>
	* uni021B: L<<191.0,608.0>--<192.0,488.0>>
	* uni043C: L<<150.0,250.0>--<148.0,10.0>>
	* uni043C: L<<478.0,10.0>--<476.0,250.0>>
	* uni2196: L<<277.0,451.0>--<276.0,127.0>>
	* uni2196: L<<655.0,506.0>--<331.0,504.0>>
	* uni2197: L<<579.0,505.0>--<255.0,506.0>> and 5 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-SemiBold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: brokenbar	Contours detected: 1	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-147.0,-20.0>--<38.0,351.0>> -> L<<38.0,351.0>--<199.0,680.0>>
	* fraction: L<<288.0,675.0>--<111.0,324.0>> -> L<<111.0,324.0>--<-58.0,-25.0>>
	* onehalf: L<<280.0,-20.0>--<466.0,351.0>> -> L<<466.0,351.0>--<626.0,680.0>>
	* onehalf: L<<715.0,675.0>--<539.0,324.0>> -> L<<539.0,324.0>--<369.0,-25.0>>
	* onequarter: L<<280.0,-20.0>--<466.0,351.0>> -> L<<466.0,351.0>--<626.0,680.0>>
	* onequarter: L<<715.0,675.0>--<539.0,324.0>> -> L<<539.0,324.0>--<369.0,-25.0>>
	* percent: L<<236.0,13.0>--<434.0,343.0>> -> L<<434.0,343.0>--<612.0,649.0>>
	* percent: L<<708.0,644.0>--<521.0,333.0>> -> L<<521.0,333.0>--<332.0,7.0>>
	* perthousand: L<<236.0,13.0>--<434.0,343.0>> -> L<<434.0,343.0>--<612.0,649.0>>
	* perthousand: L<<708.0,644.0>--<521.0,333.0>> -> L<<521.0,333.0>--<332.0,7.0>> and 7 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* t: L<<203.0,610.0>--<204.0,490.0>>
	* tbar: L<<203.0,610.0>--<204.0,490.0>>
	* tcaron: L<<203.0,610.0>--<204.0,490.0>>
	* trademark: L<<480.0,556.0>--<479.0,358.0>>
	* uni0163: L<<203.0,610.0>--<204.0,490.0>>
	* uni021B: L<<203.0,610.0>--<204.0,490.0>>
	* uni2196: L<<283.0,434.0>--<284.0,128.0>>
	* uni2196: L<<651.0,495.0>--<345.0,496.0>> and uni2197: L<<624.0,128.0>--<625.0,434.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[8] SofiaSans-SemiBoldItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Are there any misaligned on-curve points?</summary>

* [com.google.fonts/check/outline_alignment_miss](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_alignment_miss)
<pre>--- Rationale ---

This test heuristically looks for on-curve points which are close to, but do
not sit on, significant boundary coordinates. For example, a point which has a
Y-coordinate of 1 or -1 might be a misplaced baseline point. As well as the
baseline, the test also checks for points near the x-height (but only for lower
case Latin letters), cap-height, ascender and descender Y coordinates.

Not all such misaligned curve points are a mistake, and sometimes the design
may call for points in locations near the boundaries. As this test is liable to
generate significant numbers of false positives, the test will pass if there
are more than 100 reported misalignments.


</pre>

* ⚠ **WARN** The following glyphs have on-curve points which have potentially incorrect y coordinates:
	* Aring: X=366.0,Y=799.0 (should be at ascender 800?)
	* Atilde: X=393.5,Y=800.5 (should be at ascender 800?)
	* Atilde: X=513.0,Y=801.0 (should be at ascender 800?)
	* Ccaron: X=393.0,Y=798.0 (should be at ascender 800?)
	* Dcaron: X=361.0,Y=798.0 (should be at ascender 800?)
	* Ecaron: X=348.0,Y=798.0 (should be at ascender 800?)
	* Lcaron: X=430.0,Y=655.5 (should be at cap-height 655?)
	* Ncaron: X=405.0,Y=798.0 (should be at ascender 800?)
	* Ntilde: X=434.5,Y=800.5 (should be at ascender 800?)
	* Ntilde: X=554.0,Y=801.0 (should be at ascender 800?) and 78 more. [code: found-misalignments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-152.0,-19.0>--<42.0,351.0>> -> L<<42.0,351.0>--<210.0,679.0>>
	* fraction: L<<298.0,674.0>--<113.0,324.0>> -> L<<113.0,324.0>--<-64.0,-24.0>>
	* onehalf: L<<263.0,-19.0>--<457.0,351.0>> -> L<<457.0,351.0>--<625.0,679.0>>
	* onehalf: L<<713.0,674.0>--<528.0,324.0>> -> L<<528.0,324.0>--<351.0,-24.0>>
	* onequarter: L<<263.0,-19.0>--<457.0,351.0>> -> L<<457.0,351.0>--<625.0,679.0>>
	* onequarter: L<<713.0,674.0>--<528.0,324.0>> -> L<<528.0,324.0>--<351.0,-24.0>>
	* percent: L<<268.0,13.0>--<466.0,343.0>> -> L<<466.0,343.0>--<644.0,649.0>>
	* percent: L<<740.0,644.0>--<553.0,333.0>> -> L<<553.0,333.0>--<364.0,7.0>>
	* perthousand: L<<268.0,13.0>--<466.0,343.0>> -> L<<466.0,343.0>--<644.0,649.0>>
	* perthousand: L<<740.0,644.0>--<553.0,333.0>> -> L<<553.0,333.0>--<364.0,7.0>> and 8 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* uni0446: B<<454.0,123.0>-<450.0,102.0>-<448.0,80.0>>/L<<448.0,80.0>--<448.0,81.0>> = 5.1944289077348 [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-Thin.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-122.0,-15.0>--<53.0,334.0>> -> L<<53.0,334.0>--<223.0,673.0>>
	* fraction: L<<246.0,672.0>--<74.0,330.0>> -> L<<74.0,330.0>--<-99.0,-17.0>>
	* onehalf: L<<234.0,-15.0>--<409.0,334.0>> -> L<<409.0,334.0>--<579.0,673.0>>
	* onehalf: L<<602.0,672.0>--<431.0,330.0>> -> L<<431.0,330.0>--<257.0,-17.0>>
	* onequarter: L<<234.0,-15.0>--<409.0,334.0>> -> L<<409.0,334.0>--<579.0,673.0>>
	* onequarter: L<<602.0,672.0>--<431.0,330.0>> -> L<<431.0,330.0>--<257.0,-17.0>>
	* percent: L<<254.0,4.0>--<448.0,334.0>> -> L<<448.0,334.0>--<634.0,653.0>>
	* percent: L<<659.0,651.0>--<471.0,331.0>> -> L<<471.0,331.0>--<279.0,3.0>>
	* perthousand: L<<254.0,4.0>--<448.0,334.0>> -> L<<448.0,334.0>--<634.0,653.0>>
	* perthousand: L<<659.0,651.0>--<471.0,331.0>> -> L<<471.0,331.0>--<279.0,3.0>> and 7 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* Psi: L<<380.0,214.0>--<381.0,651.0>>
	* Psi: L<<404.0,651.0>--<403.0,214.0>>
	* exclam: L<<113.0,651.0>--<111.0,168.0>>
	* exclam: L<<89.0,168.0>--<88.0,651.0>>
	* exclamdown.case: L<<111.0,486.0>--<113.0,3.0>>
	* exclamdown.case: L<<88.0,3.0>--<89.0,486.0>>
	* exclamdown: L<<111.0,311.0>--<113.0,-172.0>>
	* exclamdown: L<<88.0,-172.0>--<89.0,311.0>>
	* psi.sc: L<<331.0,177.0>--<332.0,524.0>> and psi.sc: L<<355.0,524.0>--<354.0,177.0>> [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[7] SofiaSans-ThinItalic.ttf</b></summary>
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
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---
ve been bugs rendering variable fonts with nested components. Additionally,
some static fonts with nested components have been reported to have rendering
and printing issues. (See googlefonts/fontbakery#2961 and
arrowtype/recursive#412.)

</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* omicrontonos
	* omicrontonos.sc and alphatonos.sc [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: Kappa	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 1	Expected: 3
Glyph name: fl	Contours detected: 1	Expected: 2
Glyph name: kappa	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

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
<details>
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* fraction: L<<-148.0,-15.0>--<73.0,334.0>> -> L<<73.0,334.0>--<288.0,673.0>>
	* fraction: L<<310.0,672.0>--<94.0,330.0>> -> L<<94.0,330.0>--<-126.0,-17.0>>
	* onehalf: L<<201.0,-15.0>--<422.0,334.0>> -> L<<422.0,334.0>--<637.0,673.0>>
	* onehalf: L<<659.0,672.0>--<443.0,330.0>> -> L<<443.0,330.0>--<223.0,-17.0>>
	* onequarter: L<<201.0,-15.0>--<422.0,334.0>> -> L<<422.0,334.0>--<637.0,673.0>>
	* onequarter: L<<659.0,672.0>--<443.0,330.0>> -> L<<443.0,330.0>--<223.0,-17.0>>
	* percent: L<<275.0,4.0>--<469.0,334.0>> -> L<<469.0,334.0>--<655.0,653.0>>
	* percent: L<<680.0,651.0>--<492.0,331.0>> -> L<<492.0,331.0>--<300.0,3.0>>
	* perthousand: L<<275.0,4.0>--<469.0,334.0>> -> L<<469.0,334.0>--<655.0,653.0>>
	* perthousand: L<<680.0,651.0>--<492.0,331.0>> -> L<<492.0,331.0>--<300.0,3.0>> and 6 more. [code: found-colinear-vectors]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* uni0446: B<<426.0,67.0>-<423.0,44.0>-<421.0,21.0>>/L<<421.0,21.0>--<421.0,22.0>> = 4.969740728110289 [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 51 | 110 | 1980 | 135 | 1677 | 0 |
| 0% | 1% | 3% | 50% | 3% | 42% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
