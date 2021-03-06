-------------------------------constants.lua-----------------------------------------------

--holds constant values for use elsewhere in the program

local constantsModuleName = {}
constantsModule = constantsModuleName

--player 1 controls
constantsModule.player1up = 'w'
constantsModule.player1down = 's'
constantsModule.player1left = 'a'
constantsModule.player1right = 'd'
constantsModule.player1attack = 'e'

--player 2 controls
constantsModule.player2up = 'up'
constantsModule.player2down = 'down'
constantsModule.player2left = 'left'
constantsModule.player2right = 'right'
constantsModule.player2attack = 'kp0'

constantsModule.exitKey = 'escape'

--screen constants
constantsModule.titleScreen = 1
constantsModule.instructions = 2
constantsModule.mapSelection = 3
constantsModule.map1 = 4
constantsModule.map2 = 5
constantsModule.map3 = 6
constantsModule.map4 = 7
constantsModule.resultsScreen = 8
constantsModule.gameOver = 9
constantsModule.bryGuy = 10

return constantsModule
-------------------------------------------------------------------------------------------------------