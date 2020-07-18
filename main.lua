require('Assets/Functions/mapFunc')

function love.load()
  x = 0
  y = 0

  love.window.setMode(1000, 750, {resizable=true, vsync=false,})
  loadMap('Assets/Maps/randomMap.lua')
  player = love.graphics.newImage('Assets/Images/Character.png')
end

function love.update(dt)
  if(love.keyboard.isDown("w")) then
    y = y - 75 * dt
    y = y - 75 * dt
  end

  if(love.keyboard.isDown("a")) then
    x = x - 75 * dt
    x = x - 75 * dt
  end

  if(love.keyboard.isDown("s")) then
    y = y + 75 * dt
    y = y + 75 * dt
  end

  if(love.keyboard.isDown("d")) then
    x = x + 75 * dt
    x = x + 75 * dt
  end
end

function love.draw()
  drawMap()
  love.graphics.draw(player, x, y)
end
