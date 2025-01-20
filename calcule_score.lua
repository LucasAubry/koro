local point = 0

function calcule_score()
	if carre == 1 then
		point = point + 5	
	elseif brelan == 1 then
		point = point + 4
	elseif paire == 2 then
		point = point + 3
	elseif paire == 1 then
		point = point + 2
	end
end
