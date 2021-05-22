Pendulum = Class {}

function Pendulum:init(origin, len)
    self.angleV = 0
    self.angleA = 0
    self.origin = origin
    self.len = len
    self.angle = math.pi / 4;
    self.bob = vector()
end

function Pendulum:update(gravity)
    self.force = gravity * math.sin(self.angle)
    self.angleA = -1 * (self.force / self.len)
    self.angleV = self.angleV + self.angleA
    self.angle = self.angle + self.angleV
    self.bob.x = self.len * math.sin(self.angle) + self.origin.x
    self.bob.y = self.len * math.cos(self.angle) + self.origin.y
end

function Pendulum:Render()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.line(self.origin.x, self.origin.y, self.bob.x, self.bob.y)
    love.graphics.circle('fill', self.bob.x, self.bob.y, 64);
    love.graphics.setColor(0.8, 0.8, 0.8, 1)
    love.graphics.setLineWidth(8)
    love.graphics.circle('line', self.bob.x, self.bob.y, 64);
end
