require "color"
require "button"
require "play"
require "draw_play"
require "animation_score"
require "calcule_score"
require "annonce"

x = 100
y = 100
card = {}

animation = 0
color_background = "SOFT_BLUE"

function love.load(args)
	    font = love.graphics.newFont("texture/Jersey15-Regular.ttf", 60)
		card.coeur = love.graphics.newImage("texture/card_coeur.png")
		card.trefle = love.graphics.newImage("texture/card_trefle.png")
		card.pique = love.graphics.newImage("texture/card_pique.png")
		card.carreau = love.graphics.newImage("texture/card_carreau.png")
		load_stars()
end

stop_up = 0
function love.update(dt)
	if love.keyboard.isDown("up") then y = y - 5 end
    if love.keyboard.isDown("down") then y = y + 5 end
    if love.keyboard.isDown("left") then x = x - 5 end
    if love.keyboard.isDown("right") then x = x + 5 end
	button_load()
	animation_score_update()	
	mous_on_case()
	text_mouve()
--	print (frame)
--	print("x", x)
--	print("y", y)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
	end
	if key == "return" then
		button_play()
	end
end

function love.draw()
	button_draw()
	draw_case()
	if is_play == 1 then
		color_background = "SOFT_GREEN"
		play_game()
	end
	anime_score(0)
	curseur()
	darw_annonce()
	love.graphics.setBackgroundColor(getColor(color_background))
end

function love.mousepressed(x, y, button, istouch)
	if x >= 300 and x <= 500 and y >= 450 and y <= 550 then
		button_play()
	end
end
