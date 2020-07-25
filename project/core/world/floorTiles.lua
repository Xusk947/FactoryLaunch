--import section
Atlas = require('project/core/libs/soft/atlas')
require('project/core/world/tile')

--somr Variables
maxWidth = 100
maxHeight = 100

--creating atlas 
atlasFloors = Atlas:new('project/assets/images/SpriteSheetFloor.png', 64)
floors = atlasFloors:getQuads()

--generating tileTable and list
for y=1,maxWidth  do
	for x=1,maxHeight  do
		nx = x/maxWidth  + 1 + love.math.random(1)
		ny = y/maxHeight + 1 + love.math.random(1)
		value = love.math.noise(ny,nx)
		if value < 0.2 then
			Tile:new(x,y,3)
		elseif value > 0.2 and value < 0.5 then
			Tile:new(x,y,2)
		elseif value > 0.5 and value < 0.8 then
			Tile:new(x,y,1)
		elseif value > 0.8 then
			Tile:new(x,y,4)
		end
	end
end

return atlasFloors