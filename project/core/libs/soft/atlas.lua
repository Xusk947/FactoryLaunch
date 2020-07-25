-- Create atlas module
local Atlas = {}
-- Create New Atlas
function Atlas:new(image,tileSize)
    local atlas = {}
    -- give image to atlas.image
    atlas.image = love.graphics.newImage(image)
    -- give sheet tileSize
    atlas.tileSize = tileSize
    -- this function return quads like a quads = atlas.getQuads()
    function atlas.getQuads()
        local quads = {}
        -- x = 0 poin in atlas
        -- image:getWidth() return atlas width , idk what make 3 num in for just work and i dont touch this y make this again
        -- quads go from up to down and from left to right
        -- 1 4 7
        -- 2 5 8 
        -- 3 6 9
        for x=0,(atlas.image:getWidth() -atlas.tileSize) ,atlas.tileSize do
            for y=0,(atlas.image:getHeight() -atlas.tileSize) ,atlas.tileSize do
                local quad = love.graphics.newQuad(x , y , atlas.tileSize, atlas.tileSize, atlas.image:getDimensions())
                --insert in quads all quad
                table.insert(quads,quad)
            end
        end
        --return quads
        return quads
    end
    --return all atlas with function
    return atlas
end
-- reteurn Atlas module
return Atlas