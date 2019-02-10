local composer = require( "composer" )
 
-- Content Values for debugging
print( "Scaling: " .. display.pixelWidth / display.actualContentWidth )
print( "Display: " .. display.contentWidth .. " "  .. display.contentHeight)
print( "display.screenOriginX: "  .. display.screenOriginX) -- De absolute linkerkant van je scherm
print( "display.screenOriginY: "  .. display.screenOriginY) -- De absolute bovenkant van je scherm
print( "display.actualContentWidth: "  .. display.actualContentWidth) -- De totale hoogte van je scherm
print( "display.actualContentHeight: "  .. display.actualContentHeight) -- De totale hoogte van je scherm in pixels
print( "display.contentHeight: "  .. display.contentHeight) -- De totale hoogte van je scherm in pixels
print( "display.viewableContentHeight: "  .. display.viewableContentHeight) -- De totale hoogte van je scherm in pixels

-- Hide status bar
display.setStatusBar( display.HiddenStatusBar )
 
-- Seed the random number generator
math.randomseed( os.time() )
 
-- Reserve channel 1 for background music
audio.reserveChannels( 1 )
-- Reduce the overall volume of the channel
audio.setVolume( 0.3, { channel=1 } )

-- Go to the menu screen
composer.gotoScene( "game" )
-- Temporary to menu