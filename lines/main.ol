func setup()
    graphics.canvas(W, H)
    global n = 0
end

func draw()
    graphics.clear(0, .15)
    
    graphics.strokeSize(0.01)
    graphics.stroke(.8)

    for i in [1;100] do 
        step()
    end
end

func step()  
    n += 0.01
    graphics.line(
        math.rand(n, 1)*W,
        math.rand([lo,hi])(n, 2)*H,
        math.rand([lo,hi])(n, 3)*W,
        math.rand(n, 4)*H)
end