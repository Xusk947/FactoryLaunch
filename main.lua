require('Assets/Functions/mapFunc')
require('Assets/Functions/Presets/presets')
require('Assets/Functions/Utils/playerControl')
require('Assets/Functions/Utils/Cameras/playerCamera')
require('Assets/Functions/Utils/player')

function love.load()

  windowSet(750, 100)
  loadMap('Assets/Maps/randomMap.lua')
  playerSprite = love.graphics.newImage('Assets/Images/Character.png')
end

function love.update(dt)
  playerKeyControl(dt)
end

function love.draw()
  drawMap()
  love.graphics.draw(playerSprite, player.x, player.y)
end
