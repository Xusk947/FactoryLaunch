require('Assets/Functions/mapFunc')
require('Assets/Functions/Presets/presets')
require('Assets/Functions/Libs/Hump/camera')
require('Assets/Functions/Utils/cameras/playerCamera')
require('Assets/Functions/Utils/playerPreset/player')
require('Assets/Functions/Utils/playerPreset/playerControl')

function love.load()
  player.y = love.graphics:getHeight()
  player.x = love.graphics:getWidth()

  windowSet(750, 500)
  loadMap('Assets/Maps/randomMap.lua')
  playerSprite = love.graphics.newImage('Assets/Images/Character.png')
end

function love.update(dt)
  playerControl(dt)
  playerCamera:setPosition((player.x - (love.graphics:getWidth()/2)), (player.y - (love.graphics:getHeight()/2)))
end

function love.draw()
  playerCamera:set()
  drawMap()
  love.graphics.draw(playerSprite, player.x, player.y)
  playerCamera:unset()
end
