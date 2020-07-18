require('Assets/Functions/mapFunc')
require('Assets/Functions/Presets/presets')
require('Assets/Functions/Libs/Hump/camera')

function love.load()
  x, y = 0, 0

  windowSet(750, 100)
  loadMap('Assets/Maps/randomMap.lua')
  playerSprite = love.graphics.newImage('Assets/Images/Character.png')
end

function love.update(dt)
end

function love.draw()
  drawMap()
end
