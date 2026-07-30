func draw()
    graphics.clear()
    graphics.strokeSize(25)

    graphics.translate(CW, CH)

    var points = []
    for angle in [0;math.TAU;.1] do
        var r = 250 +100 * math.noise(
            math.cos(angle),
            math.sin(angle),
            elapsedTime/10)
        points.push(math.cos(angle) * r)
        points.push(math.sin(angle) * r)        
    end
    graphics.polygon(points)
end