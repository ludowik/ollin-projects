func setup()
    graphics.canvas(W, H)
    global n = 0
end

func draw()
    graphics.clear(0, .01)
    
    graphics.strokeSize(0.01)
    graphics.stroke(.8)

    for i in [1;100] do 
        step()
    end
end

func step()  
    n += 0.01
    graphics.line(
        math.rand()*W,
        math.rand()*H,
        math.rand()*W,
        math.rand()*H)
end
