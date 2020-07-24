require('project/core/content/variables')

function Atlas:new(image)
	local atlas = {}
	atlas.image = love.graphics.newImage(image)

	function atlas.getQuads(tileSize)
		local quads = {}

		for x=0,(atlas.image:getWidth() -8) ,8 do
			for y=0,(atlas.image:getHeight() -8) ,8 do
				local quad = love.graphics.newQuad(x , y , 8, 8, atlas.image:getDimensions())
				print(x ,y )
				table.insert(quads,quad)
			end
		end

		return quads
	end

	return atlas
end

return Atlas