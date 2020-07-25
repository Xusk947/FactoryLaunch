love.graphics.setDefaultFilter("nearest")
local Entity = {}
ents = {}

function Entity:new(x, y, rotation, graphics, config)
	local entity = {
		x = x,
		y = y,
		rotation = rotation,
		graphics = graphics,
		config = config,
	}
	table.insert(ents,entity)
	return entity
end

function Entity.update(dt)
	for i,v in ipairs(ents) do
		
	end
end

function Entity.draw()
	for i,v in ipairs(ents) do
		if v.graphics.image ~= nil then
			love.graphics.setColor(1,1,1,v.alpha)
			love.graphics.draw(v.graphics.image, v.y, v.y, v.rotation, v.graphics.scale, v.graphics.scale, v.graphics.image:getWidth() / 2, v.graphics.image:getHeight() / 2)
			love.graphics.setColor(1, 1, 1, 1)
		end

		if v.graphics.atlas ~= nil and v.graphics.quad ~= nil then
			love.graphics.draw(v.graphics.atlas,v.graphics.quad, v.x, v.y, v.rotation, v.graphics.width, v.graphics.height, v.graphics.offsetX, v.graphics.offsetY)
			if v.config.team ~= nil and v.graphics.teamQuad ~= nil then
				love.graphics.setColor(v.config.team.color,1)
				love.graphics.draw(v.graphics.atlas,v.graphics.teamQuad, v.x, v.y, v.rotation, v.graphics.width, v.graphics.height, v.graphics.offsetX, v.graphics.offsetY)
				love.graphics.setColor(1,1,1,1)
			end
		end
	end
end

return Entity