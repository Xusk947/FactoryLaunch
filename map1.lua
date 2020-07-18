function newTileString()
  tileString = [[]]
  local charTable = {
    ' ', '~', '-', '_'
  }
  local lenght = 99
  math.randomseed(os.time())
  for i = 0, lenght do
    if(i % 10 == 0) then
      tileString = tileString .. '\n'
    end
    tileString = tileString .. charTable[math.random(1, #charTable)]
  end
end

newTileString()
local quadInfo = {
  { ' ',  0,  0 }, --grass
  { '~',  0, 64 }, --water
  { '-', 64,  0 }, --dirt
  { '_', 64, 64 }  --stone
}

newMap(64,64,'Assets/Images/SpriteSheetFloor.png', tileString, quadInfo)
