--import section
require('project/core/content/modules')

--main "chunk"
function love.load()
  	camera.scaleX = 6
  	camera.scaleY = 6
end



function love.update(dt)
	if love.keyboard.isDown("escape") then love.event.quit() end
	if love.keyboard.isDown("r") then love.event.quit("restart") end
	camera.x = camera.x + math.sin(dt) * 50
end



function love.draw()
	camera:set()
	Tile:draw(atlasFloor, floors)
	love.graphics.pop()
end