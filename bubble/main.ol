var bubbles = []

class Bubble do
    init(x, y)
end

func draw()
    for bubble in bubbles do
        graphics.circle(bubble.x, bubble.y, 5)
    end
end

func mouse.moved(x, y)
    bubbles.insert({x:x, y:y})
end
