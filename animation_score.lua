animation = 0
frame = 0

function load_stars()	
	stars_1 = love.graphics.newImage("texture/stars/stars_1.png")
	stars_2 = love.graphics.newImage("texture/stars/stars_2.png")
	stars_3 = love.graphics.newImage("texture/stars/stars_3.png")
	stars_4 = love.graphics.newImage("texture/stars/stars_4.png")
end

function put_stars(position)
	if position == 1 then
		tx = 175
		ty = 130
	elseif position == 2 then
		tx = 295
		ty = 130
	elseif position == 3 then
		tx = 415
		ty = 130
	elseif position == 4 then
		tx = 535
		ty = 130
	end
	--animation
	if frame >= 100 and frame < 120 then
		love.graphics.draw(stars_1, tx, ty, 0, 0.5)
	end
	if frame >= 120 and frame < 140 then
		love.graphics.draw(stars_2, tx, ty, 0, 0.5)
	end
	if frame >= 140 and frame < 160 then
		love.graphics.draw(stars_3, tx, ty, 0, 0.5)
	end
	if frame >= 160 and frame < 180 then
		love.graphics.draw(stars_4, tx, ty, 0, 0.5)
	end
--	if frame > 100000 then
--		frame = 0
--	end
end

function find_place(word, app)
	for i = 1, 4 do
		if cards_to_draw[i][5] == word then
			if app ~= 0 then  -- == 0
	--			put_stars(i) --pas convincu par les etoiles
	--		else
				mouve_rectangle(i)
			end
		end
	end
end

function carre_animation(carreau, coeur, pique, trefle, app)
	animation = 1
	for i = 1, 4 do
		if (app == 0) then
			put_stars(i)
		else
			mouve_rectangle(i)
		end
	end
end

function brelan_animation(carreau, coeur, pique, trefle, app)
	animation = 1
	if carreau == 3 then
		find_place("carreau", app)
	elseif coeur == 3 then
		find_place("coeur", app)
	elseif pique == 3 then
		find_place("pique", app)
	elseif trefle == 3 then
		find_place("trefle", app)
	end
end

function double_paire_animation(carreau, coeur, pique, trefle, app)
	animation = 1
	if carreau == 2 then
		find_place("carreau", app)
	end
	if coeur == 2 then
		find_place("coeur", app)
	end
	if pique == 2 then
		find_place("pique", app)
	end
	if trefle == 2 then
		find_place("trefle", app)
	end
end

function paire_animation(carreau, coeur, pique, trefle, app)
	animation = 1
	if carreau == 2 then
		find_place("carreau", app)
	elseif coeur == 2 then
		find_place("coeur", app)
	elseif pique == 2 then
		find_place("pique", app)
	elseif trefle == 2 then
		find_place("trefle", app)
	end
end
