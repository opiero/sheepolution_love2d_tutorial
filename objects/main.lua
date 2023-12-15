local love = require("love")

function love.load()
	ListOfRectangles = {}
end

function createRect()
	local rect = {}
	rect.x = 100
	rect.y = 100
	rect.width = 70
	rect.height = 90
	rect.speed = 100

	table.insert(ListOfRectangles, rect)
end

function love.keypressed(key)
	if key == "space" then
		createRect()
	end
end

function love.update(dt)
	for _, v in ipairs(ListOfRectangles) do
		v.x = v.x + v.speed * dt
	end
end

function love.draw()
	for _, v in ipairs(ListOfRectangles) do
		love.graphics.rectangle("line", v.x, v.y, v.width, v.height)
	end
end
