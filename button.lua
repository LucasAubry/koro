mouse_on = 0
is_select = 0

function button_load()
	mouse_x, mouse_y = love.mouse.getPosition()
	if mouse_x >= 300 and mouse_x <= 500 and mouse_y >= 450 and mouse_y <= 550 then -- play button
		mouse_on = 1
	end
	if mouse_x >= 535 and mouse_x <= (535 + 60) and mouse_y >= 515 and mouse_y <= (515 + 30) then -- autoplay button
		if is_select ~= 2 then
			is_select = 1
		end
	end
end

function button_draw()
	if mouse_on == 0 then
		love.graphics.setColor(getColor("DARK_GRAY"))
		love.graphics.rectangle("fill", 300, 450, 200, 100, 20)
		love.graphics.setColor(getColor("SOFT_BLUE"))
		love.graphics.rectangle("line", 300, 450, 200, 100, 20)
    	love.graphics.setFont(font)
		love.graphics.print("PLAY", 350, 465)
	elseif mouse_on == 1 then
		love.graphics.setColor(getColor("DARK_GRAY")) --ombre
		love.graphics.rectangle("fill", 300, 450, 205, 105, 20)

		love.graphics.setColor(getColor("LIGHT_GRAY"))
		love.graphics.rectangle("fill", 300, 450, 200, 100, 20)
		love.graphics.setColor(getColor("SOFT_BLUE"))
		love.graphics.rectangle("line", 300, 450, 200, 100, 20)
		love.graphics.setColor(getColor("DARK_GRAY"))
    	love.graphics.setFont(font)
		love.graphics.print("PLAY", 350, 465)
		
		mouse_on = 0
	end
	autoplay_button_draw()
end

function autoplay_button_draw()
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", 535, 515, 60, 30, 10)
	love.graphics.setColor(getColor("SOFT_BLUE"))
	love.graphics.rectangle("line", 535, 515, 60, 30, 10)
	if is_select == 1 or is_select == 2 then
	
		love.graphics.setColor(getColor("LIGHT_BLUE"))
		love.graphics.rectangle("fill", 535, 515, 60, 30, 10)
		if is_select == 1 then
			is_select = 0
		end
	end
	love.graphics.setColor(getColor("DARK_GRAY"))
	litl_font = love.graphics.newFont("texture/Jersey15-Regular.ttf", 30)	
	love.graphics.setFont(litl_font)
	love.graphics.print("AUTO", 540, 515)
end

function button_autoplay()
	if is_select == 2 then
		is_select = 0
	else
		is_select = 2
	end
end

function auto_play()
	if is_select == 2 then
		if frame > 600 then
			button_play()
		end
	end
end

function button_play()
	if frame >= 550 then
		reset_hand()
		reset_color()
		is_play = 1
		prepare_card_to_draw(0)
		if frame > 100 then
			frame = 1
		end	
	end
	print("y", y)
	print("x", x)
end

function update_mouse_posi()
	if boul == 1 then
		if mouse_y >= 300 and mouse_y <= 500 then
			mouse_posi_y = mouse_y - 40
		end
	elseif boul == 0 then
		local a, b, c = 290, 365, 440
		local closest = a
		local min_distance = math.abs(mouse_posi_y - a)
		if math.abs(mouse_posi_y - b) < min_distance then
			closest = b
			min_distance = math.abs(mouse_posi_y - b)
		end
		if math.abs(mouse_posi_y - c) < min_distance then
			closest = c
		end
		mouse_posi_y = closest
	end
end



function curseur()
	love.graphics.setColor(getColor("SOFT_BLUE"))
	love.graphics.rectangle("fill", mous_x -6, mous_y -7, 10, 10, 50)
end


