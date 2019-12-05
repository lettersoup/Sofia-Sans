# Sofia Sans Variable Fonts

This folder contains all masters of the Sofia Sans family as well as designspace files for the upright and italic variable fonts.

The designspace files are setup with the intention to build the smalles possibel variable fonts. The means no additional master are added to form a rectangular designspace, which is a requirement for variable fonts.

## Generate the Fonts

The variable fonts for Sofia Sans can be generated with fontmake as usual:

```
fontmake -m SofiaSans.designspace -o variable
```

And for the Sofia Sans Italic:

```
fontmake -m SofiaSans-Italic.designspace -o variable
```

The variable fonts are saved in folder named `variable_ttf`.

## Technical details

This aproach has to deal with some technical limitations wich are caused by the different

The original designspace in the Glyphs files for Sofia Sans was defined like this:

![Designspace1](./img/Designspace1.png?raw=true)
image 1

Six masters (yellow dots) in a non rectangular fashion. This splits the space in two main areas:
- Top, between Regular and Bold (blue lines)
- Bottom, between Light and Regular (red lines)

The instances (green dots) are interpolated between the surrounding masters (gray arrows). This is nothing fancy. 

But Glyphs App has a special handling for some edge cases:

![Designspace2](./img/Designspace2.png?raw=true)
image 2

For instances which have weight values assigned between the weight of Normal Regular and Condensed Regular (grey area) a special set of masters is selected for the interpolation of those instances (red lines).

For the generation of variable fonts the masters need to be rearranged in order to build a rectangular designspace - like this:

![Designspace3](./img/Designspace3.png?raw=true)
image 3

As a result the weight values for Normal Regular and Condensed Regular become identical. The gray area from the second picture (image 2) disappears and the special set of masters to handle the edge cases is no longer needed. This means the change of the geometry of the designspace changes the masters which are involved in the interpolation of some instances.

When the designspace is rearranged, all defined instances must be repositioned in order to retain their original design. A mathematically unique solution is only possible as long as the masters which are involved in the interpolation don't change. As soon as different masters are used for interpolation, the original design cannot be preserved.

## Conclusion

The differen models of interpolation used by Glyphs App and variable fonts are not compatibel if the design space does not fullfill the requirements for variable fonts in the first place.

As a result the named instances in the Sofia Sans variabel fonts are not identical with the static fonts even is they are generated from the same sources. This affects mainly the folowing instances:

- Condensed Medium
- Semi Condensed Regular

These are interpolated between different sets of masters in Glyphs App and variable fonts.

The Condensed Heavy weights also differ from the static fonts because instance is placed slightly outside the design space. 
Therefore the static font is the result of an extrapolation, which is also not possible in variable fonts.

