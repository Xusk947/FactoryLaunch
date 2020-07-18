require('Assets/Functions/mapFunc')
require('Assets/Functions/Presets/presets')
require('Assets/Functions/Utils/playerControl')

function love.load()
  x = 0
  y = 0

  windowSet(750, 100)
  loadMap('Assets/Maps/randomMap.lua')
  player = love.graphics.newImage('Assets/Images/Character.png')
end

function love.update(dt)
  playerKeyControl()
end

function love.draw()
  drawMap()
  love.graphics.draw(player, x, y)
end
