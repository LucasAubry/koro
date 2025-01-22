--hud_play.lua

function draw_hud_play()
	love.graphics.setColor(getColor("DARK_GREEN"))
	love.graphics.rectangle("fill", 6, 45, 160, 550, 10)
	love.graphics.setColor(getColor("BLACK"))
	love.graphics.rectangle("line", 6, 45, 160, 550, 10)

	love.graphics.setColor(getColor("DARK_GREEN"))
	love.graphics.rectangle("fill", 20, 60, 130, 50, 10)
	love.graphics.setColor(getColor("BLACK"))
	love.graphics.rectangle("line", 20, 60, 130, 50, 10)
	
--	love.graphics.setColor(getColor("DARK_GREEN"))
--	love.graphics.rectangle("fill", 30, y, 50, 50, 10)	
--	love.graphics.setColor(getColor("BLACK"))
--	love.graphics.rectangle("line", 30, y, 50, 50, 10)	


	love.graphics.setColor(getColor("DARK_GREEN"))
	love.graphics.rectangle("fill", 155, mouse_posi_y, 40, 80, 10)
	love.graphics.setColor(getColor("BLACK"))
	love.graphics.rectangle("line", 155, mouse_posi_y, 40, 80, 10)
	love.graphics.rectangle("line", 20, mouse_posi_y, 130, 80, 10)


end
