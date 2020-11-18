# Sofia Sans
![basic proof](https://github.com/lettersoup/Sofia-Sans/blob/master/documentation/drawbot/basic-proof.png?raw=true)
![specimen 02](https://github.com/lettersoup/Sofia-Sans/blob/master/specimens/SofiaSans_02.png?raw=true)
![specimen 01](https://github.com/lettersoup/Sofia-Sans/blob/master/specimens/SofiaSans_01.png?raw=true)

# Build Process

The source files can be built with [Fontmake](https://github.com/googlefonts/fontmake), but there is a build script that automates the full process of building new fonts.

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

The first time you run the build, you will need to give run permissions to the build scripts.

On the command line, navigate to the Git project sources directory (`cd Sofia-Sans/sources`), and then give permissions to the shell scripts with:

```
chmod -R +x sources/scripts
```

The `-R` applies your permission to each of the shell scripts in the directory, and the `+x` adds execute permissions. Before you do this for shell scripts, you should probably take a look through their contents, to be sure they aren't doing anything bad. The ones in this repo simply build from the GlyphsApp sources and apply various fixes to the results.

## Step 3: Run the build scripts

You can then build sources by running the shell script in `sources` directory (`Sofia-Sans/sources`).

```
sh build.sh
```

New fonts should be in the fonts directory if everything worked.
