-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Taisei S
-- Date: May. 5th, 2018
-- Description: This calls the splash screen of the app to load itself.
-----------------------------------------------------------------------------------------

-- Hiding Status Bar
display.setStatusBar( display.HiddenStatusBar )

-----------------------------------------------------------------------------------------

-- Use composer library
local composer = require( "composer" )

-----------------------------------------------------------------------------------------

    -- Path for the file to read
    path = system.pathForFile( "volume.txt", system.DocumentsDirectory )
 
    -- Open the file handle
    file, errorString = io.open( path, "r" )
 
    if not file then
        -- Error occurred; output the cause

        print( "File error: " .. errorString )

        file = io.open( path, "w+" )

        file:write( "5" )
        io.close( file )
        file = io.open( path, "r")
        local contents = file:read( "*n" )
        userVolume = contents
        io.close( file )
    else
        -- Read data from file
        local contents = file:read( "*n" )
        -- Output the file contents
        print( "Contents of " .. path .. "\n" .. contents )
        -- Sets SetVolume to contents of read file
        userVolume = contents
        -- Close the file handle
        io.close( file )
    end
    print ("***userVolume= " .. userVolume)
    file = nil


    print("***I̮̝͍̜̓ͤ̑tͫ͡'̛̯̹̇͊s͖̲̫̮̲̉͒̅̀͆̒͢ ͔̺̦̑ͩͤaͬ̅l͓̭̼̮ͮ̄̈́l͔͖͔̻̟̪̼̔͛ ͊͏̻͎̞͔͖͕o̻̖̙̐g͉̩̮̈́̊́͗̈́͒ͦr̝͍͡e͕̞̽ ͕͎̻͉n̵̲͉̯̯͖͕o̲̟w̗͉̼̤͖̬̑̈́ͧͥ, ̶̭̞̩͕̊M̦͔͎̤̱̹ͪ͗̾͋̂͠r̕.̦̩̺͋ͫ͑̀ ̳̹̫͔̞̥ͫ̅D̡̦̭̹̋̆̓̈u͇̟̣͇͋͋n̜̩̮͇̻͚̑k̴̉̑̇̃ͯ͐e̖̮̰̜̭̅ͥͥͫͨ̃ȳ̷͍͙.͔͚̐͘ ̥̩̫̥̳̦̣̋N̩̲̟͍̤̲͙ơ̞̐̍̎t̙̳̞̰ ̛͚̝̟͙͎͂̾e͋̔͑͊̆v̫̱̣̗͈̏ͥͭ̈ͥͦ͢e͈̫̘̓̈̌̆͟n͉̖̘̠̩ͤ͂ͬ́ ̜̼͎ͮ́͐ͭ͢y͙̦̞̠̳͊̇ô̦͖̹̆ǘ͖ͯ̊r͉̩̟̣̲̣̖̆͛̈ͥͦͯ ̩͇̠̻̺̉̐͌̔ͧͬI̡̺͂̃͆n̶͇̤̾̽͛̿͗ͯ̽f̻̤̹̖̬̌ͭi͔̥̝͘n̟̠̭͞i̼͙͚t̢͔̱̱̙͖͂̎y͕̗̺͉͖̭̚ ͙̪̦͉͒ͦͅG͖͖̲̉ͧ̂́a͍̫̞̳̖͎̗ͤͤ̍̾ͥu̜̙͉̭ͪͬñ̷̰̖͔͙̓͂ͤ̿̐t̩̫̥͖͔̥̳̀l̸̥͖̥ẽ̵̝̂̏ͩ̊̍t̝͎̅̍ ̱̱̲̞̪̬͉͒ͨ̄͒̒̀ć͈̣͂̒͗͐a̻̎ͩ̌͗͊ͦ́ṇ̙̽͗̉ ̜͔͙̺͎͙̈́̓s̟̰̜̰̫t̵͔̼̿̑̐̆ͤ̽̏oͭ̽͏̫̲͍̲p͈̲ͦ ̲͑͑ͫ͋̽̈́M̗̻͚̏ͨ̄́r̀ͮ.̻͎ͅ ̥͔̽G͈̩̩̳̤̐͞ā͉͇̤̪͈͔͌̓ͅm̼̫͎̹̫͎̄̅͗͞ȩ̘̝͈̙̮̟̍̊ͨ ̮̹͓̖͈̜̦ͩ̔ͦͧ̄͘a̸̝̺̣̒n̬̰̼̰̙͚̆ͣ̒̀̚d̮̝̎̇̇͐ ̲ͨW͍͒̽͆́á͍̥̬̔̏̇t̙̬̕c̷͙̱͉̏ͣͯ̅h̛͕̣̘̦̤̪̯ͦ͂̃͋̅͐'͖̳̻̪̈́͋͐̔̓̎͒͘s͂ͬ ͇̠̅̽̂rͬͣ̉ͤͦ̓͟ĕ̜̭̪̘ͣͪͨ̑ͮͮì͙̭̳̭͖̓ͯgͪ̑n͂̽̇ ̹͓͔̩̋̇̾o̗̼̭̜ͮ͂̏ͅf͙͔͖̭̦̖̪ͮ̓̓͡ ̪̹̱ͮ̕p͕̲̳͕̕o̯̮ͨ̉͂̃͆ͩ̔͡ͅw̪̦͍̬͇͈̋̌ͣȩ̣͓̰̮̼͓̖r̯̘̬̱͋ͬ̄ͭͭ̂ͪͅ.͂ͮ̽̏͋ͦ͘ ͎̫̓")

-- Go to the intro screen
composer.gotoScene( "splash_screen" )

