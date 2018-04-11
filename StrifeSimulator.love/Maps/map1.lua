local map1Module = {}
map1 = map1Module

local environmentModule = require("LuaLib.environmentModule")

local ground
local background
local platform1
local platform2
local platform3

function map1Module.getPlatforms()
	return {platform1, platform2, platform3}
end

function map1Module.load()
	--set background properties
	background = environmentModule.FlatPlatform:new("Background", "fill", 125, 200, 232)
	background.canCollide = false
	background.Size.X = love.graphics.getWidth()
	background.Size.Y = love.graphics.getHeight()
	background.Position.X = 0
	background.Position.Y = 0

	--set ground properties
	ground = environmentModule.FlatPlatform:new("Ground", "fill", 0, 175, 0)
	ground.Size.X = love.graphics.getWidth()
	ground.Size.Y = love.graphics.getHeight() / 4
	ground.Position.X = 0
	ground.Position.Y = 450

	--set platform1 properties
	platform1 = environmentModule.FlatPlatform:new("Platform1", "fill", 60, 60, 60)
	platform1.Size.X = 200
	platform1.Size.Y = 15
	platform1.Position.X = 100
	platform1.Position.Y = 365

	--set platform2 properties
	platform2 = environmentModule.FlatPlatform:new("Platform2", "fill", 60, 60, 60)
	platform2.Size.X = 200
	platform2.Size.Y = 15
	platform2.Position.X = 500
	platform2.Position.Y = 365

	--set platform3 properties
	platform3 = environmentModule.FlatPlatform:new("Platform3", "fill", 60, 60, 60)
	platform3.Size.X = 200
	platform3.Size.Y = 15
	platform3.Position.X = 300
	platform3.Position.Y = 280
end

function map1Module.update(dt)

end

function map1Module.display()
	--draw background
	background.display()

	--draw ground
	ground.display()

	--draw platform1
	platform1.display()

	--draw platform2
	platform2.display()

	--draw platform3
	platform3.display()
end

return map1