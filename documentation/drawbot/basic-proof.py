# RENDER THIS DOCUMENT WITH DRAWBOT (Python 3): http://www.drawbot.com/

from drawBot import *
import math

# [W] WIDTH, [H] HEIGHT, [M] MARGIN
W,H,M = 1000, 500, 20

def edge():
    #960, 704
    stroke(0.1)
    strokeWidth(1)
    fill(None)
    rect(M, M, W-(2*M), H-(2*M))

def grid():
    stroke(0.1)
    strokeWidth(1)
    stpX, stpY = 0, 0
    incX, incY = M, M
    for x in range(48):
        polygon((M+stpX, M), (M+stpX, H-M))
        stpX += incX
    for y in range(32):
        polygon((M, M+stpY), (W-M, M+stpY))
        stpY += incY

def new_page():
    newPage(W, H)
    fill(0)
    rect(-2, -2, W+2, H+2)

new_page()
#grid() # Toggle for grid view
#edge() # Toggle for safe area

font("../../fonts/variable_font/SofiaSansVF.ttf")

# Get axis from font
for axis, data in listFontVariations().items():
    print((axis, data))

# Set variation 
fill(1)
stroke(None)
tracking(-1.5)
fontSize((M*3))

fontVariations(wght=100)
fontVariations(wdth=80)
text("Lorem ipsum dolor sit amet", (M, (M*22)-12))
fontVariations(wght=200)
fontVariations(wdth=83)
text("Lorem ipsum dolor sit amet", (M, (M*19)-12))
fontVariations(wght=300)
fontVariations(wdth=86)
text("Lorem ipsum dolor sit amet", (M, (M*16)-12))
fontVariations(wght=400)
fontVariations(wdth=89)
text("Lorem ipsum dolor sit amet", (M, (M*13)-12))
fontVariations(wght=500)
fontVariations(wdth=92)
text("Lorem ipsum dolor sit amet", (M, (M*10)-12))
fontVariations(wght=600)
fontVariations(wdth=95)
text("Lorem ipsum dolor sit amet", (M, (M*7)-12))
fontVariations(wght=700)
fontVariations(wdth=98)
text("Lorem ipsum dolor sit amet", (M, (M*4)-12))
fontVariations(wght=800)
fontVariations(wdth=100)
text("Lorem ipsum dolor sit amet", (M, (M*1)-12))

fontVariations(wght=900)
fontVariations(wdth=100)
text("Sofia Sans", (M*36-10, (M*22)-12))

saveImage("basic-proof.png")