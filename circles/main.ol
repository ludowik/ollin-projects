import "circle"

graphics.canvas(W, H, "circles")

func setup()
    global circles = []
    for i in [1;10] do
        circles[i] = Circle(0,0)
    end
end

func draw()
    ## graphics.clear(colors.GREEN)
    for c in circles do
        c.draw()
    end
end

