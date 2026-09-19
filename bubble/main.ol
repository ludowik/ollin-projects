var bubbles = []
func draw()
    for bubble in bubbles do
        graphics.circle(bubble.x, bubble.y)
    end
end

func mouse.moved(x, y)
    bubbles.add({x:x, y:y})
end
