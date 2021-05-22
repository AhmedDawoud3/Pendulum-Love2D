local vector = require("vector")

angleV = 0
angleA = 0
gravity = 1

function love.load()
    love.window.setMode(600, 800)
    love.window.setTitle('Pendulum')
    origin = vector(300, 0)
    angle = math.pi / 4;
    bob = vector()
    len = 300
end
function love.draw()
    love.graphics.clear(0, 0, 0)
    force = gravity * math.sin(angle)
    angleA = -1 * (force / len)
    angleV = angleV + angleA
    angle = angle + angleV

    bob.x = len * math.sin(angle) + origin.x
    bob.y = len * math.cos(angle) + origin.y
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.line(origin.x, origin.y, bob.x, bob.y)
    love.graphics.circle('fill', bob.x, bob.y, 64);
    love.graphics.setColor(0.8, 0.8, 0.8, 1)
    love.graphics.setLineWidth(8)
    love.graphics.circle('line', bob.x, bob.y, 64);
end
