# Sofia Sans
![basic proof](https://github.com/lettersoup/Sofia-Sans/blob/master/documentation/drawbot/basic-proof.png?raw=true)
![specimen 02](https://github.com/lettersoup/Sofia-Sans/blob/master/specimens/SofiaSans_02.png?raw=true)
![specimen 01](https://github.com/lettersoup/Sofia-Sans/blob/master/specimens/SofiaSans_01.png?raw=true)

# About

Originaly designed as a typeface for the capital city of Bulgaria, Sofia Sans is a comprehensive type system in four widths with extended coverage of the Latin-, Greek- and Cyrillic Script.
The inspiration for the design comes from early-twentieth-century so-called technical sans serifs—typefaces with confident letterforms, a pronounced vertical impetus, and tense curves. But Sofia Sans has also nice humanistic details and soft round corners, that reminds print work with hot metal typesetting.
Lettersoup aimed to create a universally useful font family. With narrow proportions and a generous x-height, we drew a space-saving workhorse that would work well in very diverse environments: from large to small, for display and immersive reading, on-screen and in print.
Sofia Sans is also a feature-rich OpenType family with a large character set including small caps, several figure styles, arrows, numerals in circles, etc.

# Build Process

The Sofia Sans superfamily comprises four variable fonts offering a wide range of widths: Normal, SemiCondensed, Condensed, and ExtraCondensed.

The source files can be processed with [Fontmake](https://github.com/googlefonts/fontmake), but there is a build script that automates the full process of building new fonts.

The build process requires you to open up a terminal and navigate to this project's root directory, AKA the first level (where this README file is located).

## Step 1: Install Requirements

A Python virtual environment should be used to build this project. If you are new to using Python virtual environments, first set up a virtual environment with:

```
virtualenv -p python3 venv
```

Here, `venv` will be the name of the virtual environment and of the directory holding its dependencies. You need to activate it with:

```
source venv/bin/activate
```

To operate the scripts within this repo, install requirements with:

```
pip install --upgrade -r requirements.txt
```

## Step 2: Give permissions to build scripts

The first time you run the build, you will need to give run permissions to the build scripts. Each of the four families has a subfolder under the `sources` directory where you could find a build script for each one.

On the command line, navigate to the Git project sources directory (`cd Sofia-Sans/sources`), then enter to one desired font family sudirectory (e.g. `cd Extra-Condensed`) and then give permissions to the shell scripts with:

```
chmod +x 
```

The `+x` adds execute permissions. Before you do this for shell scripts, you should probably take a look through their contents, to be sure they aren't doing anything bad. The ones in this repo simply build from the GlyphsApp sources and apply various post processing fixes to the results.

## Step 3: Build the fonts


You can then build the fonts by running the shell script on each family subdirectory e.g. `sources/Extra-Condensed`.

```
sh build-ExtCnd.sh
```

New fonts should be in the fonts directory if everything worked.


## Change log

updated as of 11/17/2022

Sofia Sans was divided into four single `wght` axis fonts for each width for its inclusion in Google Fonts catalog.

- Sofia Sans v4.100
- Sofia Sans SemiCondensed v4.100
- Sofia Sans Condensed v4.100
- Sofia Sans ExtraCondensed v4.100
