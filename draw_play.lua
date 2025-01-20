function draw_case()
	left_case()
	left_mid_case()
	right_mid_case()
	right_case()
end



local lx = 180--left
local ly = 150
local ty = 0;

function left_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", lx, ly, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", lx, ly, 100, 100, 5)

end

local lmx = 300 --left_mid
local lmy = 150

function left_mid_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", lmx, lmy, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", lmx, lmy, 100, 100, 5)
end

local rmx = 420 --right mid
local rmy = 150

function right_mid_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", rmx, rmy, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", rmx, rmy, 100, 100, 5)
end

local rx = 540
local ry = 150

function right_case()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", rx, ry, 105, 105, 5)
	love.graphics.setColor(getColor("LIGHT_GRAY"))
	love.graphics.rectangle("fill", rx, ry, 100, 100, 5)
end

function mous_on_case()
    mous_x, mous_y = love.mouse.getPosition()

    if mous_x >= lx and mous_x <= lx + 100 and mous_y >= ly and mous_y <= ly + 100 then
        ly = ly - 10
		positions[1][2] = positions[1][2] - 10
    end
    if mous_x >= lmx and mous_x <= lmx + 100 and mous_y >= lmy and mous_y <= lmy + 100 then
        lmy = lmy - 10
		positions[2][2] = positions[2][2] - 10
    end
    if mous_x >= rmx and mous_x <= rmx + 100 and mous_y >= rmy and mous_y <= rmy + 100 then
        rmy = rmy - 10
		positions[3][2] = positions[3][2] - 10
    end
    if mous_x >= rx and mous_x <= rx + 100 and mous_y >= ry and mous_y <= ry + 100 then
        ry = ry - 10
		positions[4][2] = positions[4][2] - 10
    end
	if is_play == 1 then
		update_card_positions()--ca marche mais pas pour les carre
	end
end

function animation_score_update()
	if animation == 1 then
		anime_score(1)
	end
end

boule = 0
function mouve_rectangle(i)	
	if boule == 0 then
		ly = 150
		lmy = 150
		rmy = 150
		ry = 150
		stop_up = 1

		positions[1] = {205, 175}
		positions[2] = {325, 175}
		positions[3] = {445, 175}
		positions[4] = {565, 175}
		boule = 1
	end
	if i == 1 then
		if stop_up < 8 then
			ly = ly - 10
			ty = ty
			positions[1][2] = positions[1][2] - 10
		end
	elseif i == 2 then
		if stop_up < 8 then
			lmy = lmy - 10
			ty = ty
			positions[2][2] = positions[2][2] - 10
		end
	elseif i == 3 then
		if stop_up < 8 then
			rmy = rmy - 10
			ty = ty
			positions[3][2] = positions[3][2] - 10
		end
	elseif i == 4 then
		if stop_up < 8 then
			ry = ry - 10
			ty = ty
			positions[4][2] = positions[4][2] - 10
		end
	end
	if frame > 500 then
		ly = 150
		lmy = 150
		rmy = 150
		ry = 150
		stop_up = 1

		positions[1] = {205, 175}
		positions[2] = {325, 175}
		positions[3] = {445, 175}
		positions[4] = {565, 175}
	end
	update_card_positions()--ca marche mais pas pour les carre
end

function put_stars(position)
	if position == 1 then
		tx = 175
		ty = 140
	elseif position == 2 then
		tx = 295
		ty = 140
	elseif position == 3 then
		tx = 415
		ty = 140
	elseif position == 4 then
		tx = 535
		ty = 140
	end
	--animation
	if frame >= 1 and frame < 25 then
		love.graphics.draw(stars_1, tx, ty, 0, 0.5)
	end
	if frame >= 25 and frame < 50 then
		love.graphics.draw(stars_2, tx, ty, 0, 0.5)
	end
	if frame >= 50 and frame < 75 then
		love.graphics.draw(stars_3, tx, ty, 0, 0.5)
	end
	if frame >= 75 and frame < 100 then
		love.graphics.draw(stars_4, tx, ty, 0, 0.5)
	end
--	if frame > 100000 then
--		frame = 0
--	end
end
local bouleNothing = 0
function nothing_animation(carreau, coeur, pique, trefle, app)
	animation = 1
	if frame > 500 then
		ly = 150
		lmy = 150
		rmy = 150
		ry = 150
		stop_up = 1

		positions[1] = {205, 175}
		positions[2] = {325, 175}
		positions[3] = {445, 175}
		positions[4] = {565, 175}
	end
	--update_card_positions()
end
