local function createStars()
 
  for i = 1, 20 do
    local star = display.newCircle( math.random( display.contentWidth ), math.random(display.contentHeight), 1 );
    star:setFillColor( math.random(200) + 55 );
    local function moveStar()
      if star.x ~= nil then
        if star.x <= 0 then
          star:removeSelf();
        elseif star.x > 0 then
          star.x = star.x - 5;
        end
      end
    end
    timer.performWithDelay( 1, moveStar, display.contentWidth + 50 );
  end
 
  local function makeStar()
    local star = display.newCircle( display.contentWidth + math.random( 20 ), math.random(display.contentHeight), 1 );
    star:setFillColor( math.random(200) + 55 );
    local function moveStar()
      if star.x ~= nil then
        if star.x &lt;= 0 then
          --print( "removing" );
          star:removeSelf();
        elseif star.x &gt; 0 then
          star.x = star.x - 5;
        end
      end
    end
    timer.performWithDelay( 1, moveStar, display.contentWidth + 50 );
  end
     
  timer.performWithDelay( 75, makeStar, 0 );
 
end

createStars();