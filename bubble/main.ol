var bubbles = []

class Bubble
    func init(x, y)
        self.x = x
        self.y = y

        self.dx = math.rand(-1, 1)

        self.clr = Color.random()
    end
end

func draw()
    graphics.noStroke()
    for bubble in bubbles do
        graphics.fill(bubble.clr)    
        graphics.circle(bubble.x, bubble.y, 5)
    end
end

func mouse.moved(x, y)
    bubbles.insert(Bubble(x, y))
end
