--annonce

local x_texte = -300
local y_texte = 3
local texte_annonce = "Nothing"

function darw_annonce()
	love.graphics.setColor(getColor("DARK_GRAY"))
	love.graphics.rectangle("fill", 2, 0, 797, 35, 5)
	love.graphics.setColor(getColor("RED"))
	love.graphics.rectangle("line", 2, 3, 797, 33, 5)
	print_texte_annonce()
end

function print_texte_annonce()
	love.graphics.setColor(getColor("RED"))
	litl_font = love.graphics.newFont("texture/Jersey15-Regular.ttf", 30)
	love.graphics.setFont(litl_font)
	love.graphics.print(texte_annonce, x_texte, y_texte)
end

function text_mouve()
	if x_texte > 830 then
		x_texte = -100
	end
	x_texte = x_texte + 2
end

local texte_temp = "Nothing temp"
function change_texte_annonce(new_texte)
	if x_texte < 0 then
		texte_annonce = texte_temp
	end
		texte_temp = new_texte
end
