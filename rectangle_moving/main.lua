local love = require("love")

function love.load()
	X = 100
end

function love.update(dt)
	if love.keyboard.isDown("right") then
		X = X + 500 * dt
	elseif love.keyboard.isDown("left") then
		X = X - 500 * dt
	end
end

function love.draw()
	love.graphics.rectangle("line", X, 50, 200, 150)
end
