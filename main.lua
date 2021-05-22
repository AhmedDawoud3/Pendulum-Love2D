vector = require("vector")
Class = require 'class'
require 'Pendulum'
gravity = 1

function love.load()
    love.window.setMode(600, 800)
    love.window.setTitle('Pendulum')
    pendulum = Pendulum(vector(300, 0), 300)
end
function love.update(dt)
    pendulum:update(gravity)
end
function love.draw()
    love.graphics.clear(0, 0, 0)
    pendulum:Render()
end
