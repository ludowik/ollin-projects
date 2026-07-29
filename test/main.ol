
graphics.canvas(W, H)

func draw()
    graphics.clear()
    graphics.translate(CW, CH)
    var R = W / 5
    var points = []
    for angle in [0;math.TAU;.01] do
        var r = R + math.noise(angle, elapsedTime) * 100
        points.push(math.cos(angle) * r)
        points.push(math.sin(angle) * r)        
    end
    graphics.polygon(points)
end