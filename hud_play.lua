--hud_play.lua
mouse_posi_y = 300
local x1 = false
local x10 = false
local x100 = false
function draw_hud_play()
	love.graphics.setColor(getColor("DARK_GREEN"))
	love.graphics.rectangle("fill", 6, 45, 160, 550, 10)
	love.graphics.setColor(getColor("BLACK"))
	love.graphics.rectangle("line", 6, 45, 160, 550, 10)

	love.graphics.setColor(getColor("DARK_GREEN"))
	love.graphics.rectangle("fill", 20, 60, 130, 50, 10)
	love.graphics.setColor(getColor("BLACK"))
	love.graphics.rectangle("line", 20, 60, 130, 50, 10)
	


--texte x1x10x100
	love.graphics.setColor(getColor("DARK_GREEN"))
	love.graphics.rectangle("fill", 30, 280, 50, 50, 10)	

	love.graphics.setColor(getColor("DARK_GRAY"))
	litl_font = love.graphics.newFont("texture/Jersey15-Regular.ttf", 45)	
	love.graphics.setFont(litl_font)
	love.graphics.print("x1", 40, 300)

	litl_font = love.graphics.newFont("texture/Jersey15-Regular.ttf", 38)	
	love.graphics.setFont(litl_font)
	love.graphics.print("x10", 33, 380)

	litl_font = love.graphics.newFont("texture/Jersey15-Regular.ttf", 32)	
	love.graphics.setFont(litl_font)
	love.graphics.print("x100", 31, 457)


	love.graphics.setColor(getColor("BLACK"))
	if x1 then
		love.graphics.rectangle("line", 30, 300, 60, 60, 10)	
	else
		love.graphics.rectangle("line", 30, 300, 50, 50, 10)	
	end
	if x10 then
		love.graphics.rectangle("line", 30, 375, 60, 60, 10)	
	else
		love.graphics.rectangle("line", 30, 375, 50, 50, 10)	
	end
	if x100 then
		love.graphics.rectangle("line", 30, 450, 60, 60, 10)	
	else
		love.graphics.rectangle("line", 30, 450, 50, 50, 10)	
	end

	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", 155, mouse_posi_y, 40, 80, 10)
	love.graphics.setColor(getColor("BLACK"))
	love.graphics.rectangle("line", 155, mouse_posi_y, 40, 80, 10)
	love.graphics.rectangle("line", 20, mouse_posi_y, 130, 80, 10)
end

function zoom()
	local a, b, c = 285, 360, 435
	local closest = a
	local min_distance = math.abs(mouse_posi_y - a)
	if math.abs(mouse_posi_y - b) < min_distance then
		closest = b
		min_distance = math.abs(mouse_posi_y - b)
	end
	if math.abs(mouse_posi_y - c) < min_distance then
		closest = c
	end

	x1 = closest == a
	x10 = closest == b
	x100 = closest == c
end
