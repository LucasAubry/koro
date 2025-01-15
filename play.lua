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

function play_game()
	for _, c in ipairs(cards_to_draw) do
		local random, x, y, scale = unpack(c)
		love.graphics.draw(random, x, y, 0, scale)
	end
end

function prepare_card_to_draw()
	cards_to_draw = {}
		for _, position in ipairs(positions) do
			local key, scale = unpack(keys[math.random(#keys)])
			local x, y = unpack(position)
			local random = card[key]
			table.insert(cards_to_draw, {random, x, y, scale, key})
		end
			print(cards_to_draw[1][5])
			print(cards_to_draw[2][5])
			print(cards_to_draw[3][5])
			print(cards_to_draw[4][5])
end

