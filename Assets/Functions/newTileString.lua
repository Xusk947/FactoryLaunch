function newTileString()
  tileString = [[]]
  local charTable = {
    ' ', '~', '-', '_'
  }
  local lenght = 9999
  math.randomseed(os.time())
  for i = 0, lenght do
    if(i % 100 == 0) then
      tileString = tileString .. '\n'
    end
    tileString = tileString .. charTable[math.random(1, #charTable)]
  end
end
