function draw_case()
	left_case()
	left_mid_case()
	right_mid_case()
	right_case()
end

function left_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", 180, 150, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", 180, 150, 100, 100, 5)

end

function left_mid_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", 300, 150, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", 300, 150, 100, 100, 5)
end

function right_mid_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", 420, 150, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", 420, 150, 100, 100, 5)
end

function right_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", 540, 150, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", 540, 150, 100, 100, 5)
end

