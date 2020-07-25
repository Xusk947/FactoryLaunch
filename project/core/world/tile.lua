Tile = {}
tiles = {}

function Tile:new(x, y, id)
	tile = {
		x = x * 64,
		y = y * 64,
		id = id,
	}
	table.insert(tiles, tile)
end

for _,v in ipairs(tiles) do
	print(v)
end

function Tile:draw(atlas,quads)
  for i,v in ipairs(tiles) do
    love.graphics.draw(atlasFloors.image,quads[v.id],v.x,v.y,0 or v.rotation,1,1)
  end
end