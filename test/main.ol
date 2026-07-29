
graphics.canvas(W, H)

func draw()
    graphics.clear()
    graphics.translate(CW, CH)
    var R = W / 3
    var points = []
    for angle in [0;math.TAU+.1;.1] do
        var r = math.noise(angle, elapsedTime) * R
        points.push(math.cos(angle) * r)
        points.push(math.sin(angle) * r)        
    end
    graphics.polyline(points)
end