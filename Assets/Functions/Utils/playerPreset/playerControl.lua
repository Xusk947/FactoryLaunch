function playerControl(time)
  local Time = time
  if(love.keyboard.isDown('w')) then
    for i = 1, 500 do
      player.y = player.y - 1 * Time
    end
  end
  if(love.keyboard.isDown('a')) then
    for i = 1, 500 do
      player.x = player.x - 1 * Time
    end
  end
  if(love.keyboard.isDown('s')) then
    for i = 1, 500 do
      player.y = player.y + 1 * Time
    end
  end
  if(love.keyboard.isDown('d')) then
    for i = 1, 500 do
      player.x = player.x + 1 * Time
    end
  end
end
