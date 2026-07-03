import "circle"

graphics.canvas(W, H, "circles")

var xx = 0
var yy = 0
func draw()
   ## graphics.clear(colors.GREEN)
   graphics.circle( xx, yy, 10, 10)
end

func mouse.moved(x, y)
    xx, yy = x, y
end