require('Assets/Functions/newTileString')
newTileString()
local quadInfo = {
  { ' ',  0,  0 }, --grass
  { '~',  0, 64 }, --water
  { '-', 64,  0 }, --dirt
  { '_', 64, 64 }  --stone
}

newMap(64,64,'Assets/Images/SpriteSheetFloor.png', tileString, quadInfo)
