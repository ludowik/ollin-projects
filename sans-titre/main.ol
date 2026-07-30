graphics.canvas(W, H)
func draw()
    graphics.strokeSize(10)

    graphics.translate(CW, CH)

    var points = []
    for angle in [0;math.TAU;.05] do
        var r = 100 * math.noise(
            math.cos(angle),
            math.sin(angle),
            elapsedTime/10)
        points.push(math.cos(angle) * r)
        points.push(math.sin(angle) * r)        
    end
    graphics.polygon(points)
end