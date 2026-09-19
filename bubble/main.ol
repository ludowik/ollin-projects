var bubbles = []

class Bubble
    func init(x, y)
        self.x = x
        self.y = y

        self.dx = math.rand(-1, 1)
        self.dy = math.rand(-1, 1)

        self.speed = math.rand(2, 5)

        self.clr = Color.random()
    end

    func update(dt)
        self.x += self.dx * self.speed * self.speed
        self.y += self.dy
    end

    func draw()
        graphics.fill(self.clr)    
        graphics.circle(self.x, self.y, 5)    
    end
end

func update(dt)
    for bubble in bubbles do
        bubble.update()
    end    
end

func draw()
    graphics.clear()
    graphics.noStroke()
    
    for bubble in bubbles do
        bubble.draw()
    end
end

func mouse.moved(x, y)
    bubbles.insert(Bubble(x, y))
end
