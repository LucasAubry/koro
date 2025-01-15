mouse_on = 0

function button_load()
	mous_x, mous_y = love.mouse.getPosition()
	if mous_x >= 300 and mous_x <= 500 and mous_y >= 450 and mous_y <= 550 then
		mouse_on = 1
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
end

function curseur()
	love.graphics.setColor(getColor("SOFT_BLUE"))
	love.graphics.rectangle("fill", mous_x -6, mous_y -7, 10, 10, 50)
end
