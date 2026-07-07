import "circle"

graphics.canvas(W, H, "circles")

func setup()
    global circles = []

    func level(n)
        var SIZE = math.min(W, H)
        var size = SIZE/n
        for x in [-n;n] do
            for y in [-n;n] do
                circles[#circles+1] = Circle(
                    W/2 + x*size,
                    H/2 + y*size,
                    size/n/2)
            end
        end
    end

    level(1.5)
    level(3)
    level(7.5)
end

func draw()
    graphics.blendMode(blend.ADD)
    graphics.clear(Color(0, 0, 0, .1))
    for c in circles do
        c.draw()
    end
end

