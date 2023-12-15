local love = require("love")

function love.load()
	Fruits = { "apple", "banana" }
	table.insert(Fruits, "pear")
	table.insert(Fruits, "pineapple")

	table.remove(Fruits, 2)

	Fruits[1] = "tomato"

	for i, v in ipairs(Fruits) do
		print(i, v)
	end
end

function love.draw()
	for i, frt in ipairs(Fruits) do
		love.graphics.print(frt, 100, 100 + i * 50)
	end
end
