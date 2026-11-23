func setup()
    gfx.canvas(W, H)
    global n = 0
end

func draw()
    gfx.clear(0, .025)
    
    gfx.strokeSize(0.01)
    gfx.stroke(.8)

    for i in [1;100] do 
        step()
    end
end

func step()  
    n += 0.01
    gfx.line(
        math.rand()*W,
        math.rand()*H,
        math.rand()*W,
        math.rand()*H)
end
