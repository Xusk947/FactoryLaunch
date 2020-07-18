function playerKeyControl(time)
  local Time = time
  local times = 50
  local speed = 5
    if(love.keyboard.isDown("w")) then
      for i = 0, times do
        player.y = player.y - speed * Time
      end
    end

    if(love.keyboard.isDown("s")) then
      for i = 0, times do
        player.y = player.y + speed * Time
      end
    end

    if(love.keyboard.isDown("a")) then
      for i = 0, times do
        player.x = player.x - speed * Time
      end
    end

    if(love.keyboard.isDown("d")) then
      for i = 0, times do
        player.x = player.x + speed * Time
      end
    end
end
