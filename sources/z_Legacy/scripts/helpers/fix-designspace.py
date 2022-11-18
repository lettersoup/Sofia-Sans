# set up for Encode Sans

import math
import sys
import re
from glyphsLib import glyphdata
from glyphsLib import GSFont
# import objc

filename = sys.argv[-1]
font = GSFont(filename)

# def evenRound(number):
# 	if int(number) % 2 == 0:
# 		return int(number)
# 	else:
# 		return int(number) + 1

# If set to false, the files master locations and instance values will all be changed
nonDestructive = False


########## Find and define width and weight values in input glyphs source ###########

wdthList = []
wdthWghtDict = {}

for instance in font.instances:
	wdthWghtDict[str(instance.widthValue)] = {}
	wdthList.append(instance.widthValue)

wdthList = set(wdthList)

for instance in font.instances:
	wdthWghtDict[str(instance.widthValue)][instance.weight]= (instance.weightValue)

# get max and min widths
wdthMax = max(wdthList)
wdthMin = min(wdthList)

# finds min wdth from widths list 
minWdthWghts = wdthWghtDict[str(wdthMin)]

# finds min wght value of instances in the min width
minWdthMinWght = minWdthWghts[min(minWdthWghts, key=lambda key: minWdthWghts[key])]

# finds max wght value of instances in the min width
minWdthMaxWght = minWdthWghts[max(minWdthWghts, key=lambda key: minWdthWghts[key])]

# finds weights dictionary from max width wdthWghtDict
maxWdthWghts = wdthWghtDict[str(wdthMax)]

# finds min wght value of instances in the max width
maxWdthMinWght = maxWdthWghts[min(maxWdthWghts, key=lambda key: maxWdthWghts[key])]

# finds max wght value of instances in the max width
maxWdthMaxWght = maxWdthWghts[max(maxWdthWghts, key=lambda key: maxWdthWghts[key])]

print(minWdthMinWght,maxWdthMinWght, minWdthMaxWght, maxWdthMaxWght)

# make dict ? of masters
# find master with max width, min weight
# find master with min width, max weight

########## Find and define "Wide Light" and "Condensed Bold"  master indexes ###########

mastersWdthList = []
mastersWdthWghtDict = {}

for master in font.masters:
	mastersWdthWghtDict[str(master.widthValue)] = []
	mastersWdthList.append(master.widthValue)

mastersWdthList = set(mastersWdthList)

for master in font.masters:
	mastersWdthWghtDict[str(master.widthValue)].append(master.weightValue)


masterMaxWdth = max(mastersWdthList)
masterMinWdth = min(mastersWdthList)

# condensed bold master weight
masterMinWdthMaxWght = max(mastersWdthWghtDict[str(masterMinWdth)])

# wide light master weight
masterMaxWdthMinWght = min(mastersWdthWghtDict[str(masterMaxWdth)])

print(masterMinWdthMaxWght, masterMaxWdthMinWght)
 
for idx,master in enumerate(font.masters):	
	# get wide light master index
	if master.widthValue == masterMaxWdth and master.weightValue == masterMaxWdthMinWght:
		wideLightIndex = idx
	# get condensed bold master index.
	if master.widthValue == masterMinWdth and master.weightValue == masterMinWdthMaxWght:
		condBoldIndex = idx

# Set this if using a 6 master setup with equal middle masters
# wghtMid = 0.0

# Set this if using a 6 master setup with equal middle masters
# wghtMid = 130.0
# wghtMidNew = minWdthMinWght + ((wghtMid - minWdthMinWght) / (minWdthMaxWght - minWdthMinWght)) * (maxWdthMaxWght - minWdthMinWght)

widthDict = {0.0 : 70.0, 250.0 : 85.0, 500.0 : 100.0, 750.0 : 115.0, 1000.0 : 130.0}


for instance in font.instances:
	if instance.active == True:
		# Find max weight at this width
		wghtIntrMax = round(minWdthMaxWght + ( ((instance.widthValue - wdthMin) / (wdthMax - wdthMin)) * (maxWdthMaxWght - minWdthMaxWght) ))
		
		# Find min weight at this width
		wghtIntrMin = round(minWdthMinWght + ( ((instance.widthValue - wdthMin) / (wdthMax - wdthMin)) * (maxWdthMinWght - minWdthMinWght) ))
		
		# Original weight
		oldWght = instance.weightValue

		newWght = round( minWdthMinWght + ( ((instance.weightValue - wghtIntrMin) / (wghtIntrMax - wghtIntrMin)) * (maxWdthMaxWght - minWdthMinWght)))

		# If the font's master light weights don't match, this will match them
		font.masters[wideLightIndex].weightValue = int(minWdthMinWght)

		# In Encode Sans, the Condensed Bold has a lighter weight than the Extended Bold. This sets it as the same max.
		font.masters[condBoldIndex].weightValue = int(maxWdthMaxWght)
		
		# font.masters[1].weightValue = wghtMidNew # used in a 6-master setup

		instance.weightValue = newWght

		# insert customParameter weightClass 250 for thin instances, to support some software
		# this only works properly for Encode for now
		# if instance.weightValue == minWdthMinWght:
		# 	instance.customParameters['weightClass'] = 250
			
		instance.widthValue = widthDict[instance.widthValue]

		instance.name = re.sub("^\d* ", "", instance.name)

		print("Interp Values:", str(wghtIntrMax) + ", " + str(wghtIntrMin), "     Original Weight", oldWght, "scaled to", newWght)
		# print "Renamed as", instance.name, "\n"

## makes a dictionary of morphed designspace weight values, so it can find the mode value, then apply that to all instances to make an aligned grid
## assumes that weights instances have same names across different widths

wghtDict = {}
for instance in font.instances:
	wghtDict[instance.name] = []

for instance in font.instances:
	# print(instance.weightValue)
	wghtDict[instance.name].append(instance.weightValue)

# reduce weightDict entries down to mode value of each list
for key, val in wghtDict.items():
	print("weight values for " + key + " across widths: " + str(val))
	modeVal = max(set(val), key=val.count)
	print(str(modeVal) + " set as normalized value for " + key + "\n")
	wghtDict[key] = modeVal

# print(wghtDict)

# set instance wght values to the standardized values
for instance in font.instances:
	instance.weightValue = int(wghtDict[instance.name])

for master in font.masters:
	master.widthValue = int(widthDict[master.widthValue])
			
if nonDestructive == False:		
	print("\nScaled file to a rectangular designspace")

# for instance in font.instances:
# 	if instance.active:
# 		if instance.weightValue < 71.0 + 5 and instance.weightValue > 71.0 - 5:
# 			instance.weightValue = 71.0
# 		elif instance.weightValue < 120.0 + 5 and instance.weightValue > 120.0 - 5:
# 			instance.weightValue = 120.0
# 		elif instance.weightValue < 177.0 + 5 and instance.weightValue > 177.0 - 5:
# 			instance.weightValue = 177.0


font.save(filename)
