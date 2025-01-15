require "color"
require "button"
require "play"
require "draw_play"

x = 100
y = 100
card = {}

function love.load(args)
	    font = love.graphics.newFont("texture/Jersey15-Regular.ttf", 60)
		card.coeur = love.graphics.newImage("texture/card_coeur.png")
		card.trefle = love.graphics.newImage("texture/card_trefle.png")
		card.pique = love.graphics.newImage("texture/card_pique.png")
		card.carreau = love.graphics.newImage("texture/card_carreau.png")
end

function love.update(dt)
	if love.keyboard.isDown("up") then y = y - 5 end
    if love.keyboard.isDown("down") then y = y + 5 end
    if love.keyboard.isDown("left") then x = x - 5 end
    if love.keyboard.isDown("right") then x = x + 5 end
	button_load()
	print("x", x)
	print("y", y)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
	end

end

function love.draw()
	button_draw()
	draw_case()
	if is_play == 1 then
		play_game()
	end
	curseur()
	love.graphics.setBackgroundColor(getColor("LIGHT_BLUE"))
end

function love.mousepressed(x, y, button, istouch)
	if x >= 300 and x <= 500 and y >= 450 and y <= 550 then
		print("click")
		is_play = 1

		prepare_card_to_draw()
		end
	print("x", x)
	print("y", y)
end

