var bubbles = []

var SIZE = math.max(W, H)

class Bubble
    func init(x, y)
        self.x = x
        self.y = y

        self.dx = math.rand(-1, 1)
        self.dy = math.rand(-1, 1)

        self.life = math.rand(45, 90)

        self.speed = math.rand(SIZE/4)

        self.clr = Color.random()
    end

    func update(dt)
        self.x += self.dx * self.speed * dt
        self.y += self.dy * self.speed * dt

        self.life -= 1
        if self.life<=0 then
            self.dead = true
        end
    end

    func draw()
        graphics.fill(self.clr)    
        graphics.circle(self.x, self.y, math.map(self.life, 0, 120, 0, 15))    
    end
end

func update(dt)
    for bubble in bubbles do
        bubble.update(dt)
        if bubble.dead then
            bubbles.remove(bubble)
        end 
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
