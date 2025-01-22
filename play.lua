positions = {
	{205, 175},
	{325, 175},
	{445, 175},
	{565, 175}
}
keys = {
	{"coeur", 0.2},
	{"trefle", 0.2},
	{"carreau", 0.2},
	{"pique", 0.2}
}

cards_to_draw = {
}

local carre = 0
local brelan = 0
local paire = 0

mous_click_y = 0

function play_game()
	for _, c in ipairs(cards_to_draw) do
		local random, x, y, scale = unpack(c)
		love.graphics.draw(random, x, y, 0, scale)
	end
end

function prepare_card_to_draw(app)
	math.randomseed(os.time())
	math.random()

	cards_to_draw = {}
		for _, position in ipairs(positions) do
			local key, scale = unpack(keys[math.random(#keys)])
			local random = card[key]
			local x, y = unpack(position)
			table.insert(cards_to_draw, {random, x, y, scale, key})
		end
			check_score()
			print(cards_to_draw[1][5])
			print(cards_to_draw[2][5])
			print(cards_to_draw[3][5])
			print(cards_to_draw[4][5])
end

function update_card_positions()
    for i, pos in ipairs(positions) do
        cards_to_draw[i][2] = pos[1] -- Met à jour X
        cards_to_draw[i][3] = pos[2] -- Met à jour Y
    end
end

function check_score()
	pique = 0
	carreau = 0
	trefle = 0
	coeur = 0

	for i = 1,4 do
		if cards_to_draw[i][5] == "pique" then
			pique = pique + 1
		elseif cards_to_draw[i][5] == "carreau" then
			carreau = carreau + 1
		elseif cards_to_draw[i][5] == "trefle" then
			trefle = trefle + 1
		elseif cards_to_draw[i][5] == "coeur" then
			coeur = coeur + 1
		end
	end

	if pique == 4 or carreau == 4 or trefle == 4 or coeur == 4 then
		carre = 1
	elseif pique == 3 or carreau == 3 or trefle == 3 or coeur == 3 then
		brelan = 1
	else
		if pique == 2 then
			paire = paire + 1
		end
		if carreau == 2 then
			paire = paire + 1
		end
		if trefle == 2 then
			paire = paire + 1
		end
		if coeur == 2 then
			paire = paire + 1
		end	
	end
	calcule_score()
end

stop_up = 0
function anime_score(app)
	frame = frame + 5
	stop_up = stop_up + 1
	if carre == 1 then
		carre_animation(carreau, coeur, pique, trefle, app)
		change_texte_annonce("Carre")
	elseif brelan == 1 then
		brelan_animation(carreau, coeur, pique, trefle, app)
		change_texte_annonce("Brelan")
	elseif paire == 2 then
		double_paire_animation(carreau, coeur, pique, trefle, app)
		change_texte_annonce("Double Paire")
	elseif paire == 1 then
		paire_animation(carreau, coeur, pique, trefle, app)
		change_texte_annonce("Paire")
	else
		nothing_animation(carreau, coeur, pique, trefle, app)
	end
end

function reset_hand()
	carre = 0
	brelan = 0
	paire = 0
end

function reset_color()
	coeur = 0
	pique = 0
	trefle = 0
	carreau = 0
end
