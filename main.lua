vector = require("vector")
Class = require 'class'
require 'Pendulum'
gravity = 1
pendulums = {}
function love.load()
    love.window.setMode(600, 800)
    love.window.setTitle('Pendulum')
    for i = 1, 50 do
        pendulums[i] = Pendulum(vector(300, 0), i * 10)
    end
end
function love.update(dt)
    for i, v in ipairs(pendulums) do
        pendulums[i]:update(gravity)
    end
end
function love.draw()
    love.graphics.clear(0, 0, 0)
    for i, v in ipairs(pendulums) do
        pendulums[i]:Render()
    end
end
