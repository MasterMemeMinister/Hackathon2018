--------------------------------healthModule.lua-------------------------------------------------

--used to control the player's health and lives during the game

local healthModuleName = {}
healthModule = healthModuleName

local environmentModule = require("LuaLib.environmentModule")

local healthBarWidth
--local playerLives = player.lives
local playerX
healthModule.gameOver = false

function healthModule.load(player)

end

function healthModule.damage(player, damage)
	player.health = player.health - damage
end

--[[
function healthModule.updateLives(player, health)
	if health < 1 then
		playerLives = playerLives - 1
		player.health = 8
	end
end--]]

function healthModule.update(dt, player)
	healthBarWidth = player.health * 4
	--playerLives = player.lives

	--reset player health after they die
	if player.health < 1 then
		player.lives = player.lives - 1
		player.health = 8
	end

	--game ends when the player has no lives
	if player.lives == 0 then
		healthModule.gameOver = true
	end

	--make sure the player's lives don't go below zero
	if player.lives < 0 then
		player.lives = 0
	end
end

function healthModule.display(player)
	--display a health bar above the player
	if player.lives == 3 then
		love.graphics.setColor(255, 70, 70)
	elseif player.lives == 2 then
		love.graphics.setColor(225, 15, 20)
	elseif player.lives == 1 then
		love.graphics.setColor(200, 0, 5)
	end
	love.graphics.rectangle('fill', player.hurtBox.Position.X, player.hurtBox.Position.Y - 25, player.health * 4, 10)

	--display player health
	love.graphics.setColor(255, 255, 55)
	if player.playerIndex == 1 then
		love.graphics.print("Player " .. tostring(player.playerIndex) .. " Lives: " .. tostring(player.lives), 100, 15)
		love.graphics.print("Player " .. tostring(player.playerIndex) .. " Health: " .. tostring(player.health), 100, 30)
	elseif player.playerIndex == 2 then
		love.graphics.print("Player " .. tostring(player.playerIndex) .. " Lives: " .. tostring(player.lives), 600, 15)
		love.graphics.print("Player " .. tostring(player.playerIndex) .. " Health: " .. tostring(player.health), 600, 30)
	end
end

return healthModule
-------------------------------------------------------------------------------------------------------