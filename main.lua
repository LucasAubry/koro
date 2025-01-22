require "color"
require "button"
require "play"
require "draw_play"
require "animation_score"
require "calcule_score"
require "annonce"
require "hud_play"

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
	if is_play == nil then
		change_texte_annonce("Bonjour")
	end
	if love.keyboard.isDown("up") then y = y - 5 end
    if love.keyboard.isDown("down") then y = y + 5 end
    if love.keyboard.isDown("left") then x = x - 5 end
    if love.keyboard.isDown("right") then x = x + 5 end
	button_load()
	auto_play()
	animation_score_update()	
	mous_on_case()
	text_mouve()
--	print (frame)
	print("x", x)
	print("y", y)
	update_mous_posi()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
	end
	if key == "return" then
		button_autoplay()
	end
end

function love.draw()
	button_draw()
	draw_case()
	if is_play == 1 then
		color_background = "SOFT_GREEN"
		play_game()
		draw_hud_play()
	end
	anime_score(0)
	curseur()
	darw_annonce()
	love.graphics.setBackgroundColor(getColor(color_background))
end

boul = 0
function love.mousepressed(x, y, button, istouch)
	if x >= 300 and x <= 500 and y >= 450 and y <= 550 then
		button_play()
	end
	if mouse_x >= 535 and mouse_x <= (535 + 60) and mouse_y >= 515 and mouse_y <= (515 + 30) then
		button_autoplay()
	end
	if mouse_x >= 155 and mouse_x <= (155 + 40) and mouse_y >= mouse_posi_y and mouse_y <= (mouse_posi_y + 80) then -- autoplay button
		if boul == 0 then
			boul = 1
		elseif boul == 1 then
			boul = 0
		end
	end
end
