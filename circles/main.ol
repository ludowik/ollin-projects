import "circle"

graphics.canvas(W, H, "circles")

var img = image.load("image.jpg")

func _setup()
    global circles = []
    for i in [1,10] do
        circles[i] = Circle(0,0)
        print(circles[i])
        end
end 

func draw()
    image.draw(img, 0,0)
   ## graphics.clear(colors.GREEN)
   for c in circles do
   graphics.circle( c.x, c.y, 10, 10)
    
   end
    
   
end

 