import "circle"

graphics.canvas(W, H, "circles")

var cc = Circle(0,0)
func draw()
   ## graphics.clear(colors.GREEN)
   graphics.circle( cc.x, cc.y, 10, 10)
end

func mouse.moved(x, y)
    cc.set(x, y)
end