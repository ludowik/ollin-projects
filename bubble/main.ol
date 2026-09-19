var bubbles = []

class Bubble
    func init(x, y)
        self.x = x
        self.y = y

        self.clr = Color(grey | r, g, b [, a])
    end
end

func draw()
    for bubble in bubbles do
        graphics.circle(bubble.x, bubble.y, 5)
    end
end

func mouse.moved(x, y)
    bubbles.insert(Bubble(x, y))
end
