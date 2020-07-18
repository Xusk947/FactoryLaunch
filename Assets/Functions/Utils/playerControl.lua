function playerKeyControl()
    if(love.keyboard.isDown("w")) then
      for i = 0, 5 do
        y = y - 50 * dt
      end
    end

    if(love.keyboard.isDown("s")) then
      for i = 0, 5 do
        y = y + 50 * dt
      end
    end

    if(love.keyboard.isDown("a")) then
      for i = 0, 5 do
        x = x - 50 * dt
      end
    end

    if(love.keyboard.isDown("d")) then
      for i = 0, 5 do
        x = x + 50 * dt
      end
    end
end
