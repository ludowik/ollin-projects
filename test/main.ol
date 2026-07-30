
graphics.canvas(W, H)

func draw()
    graphics.clear()
    graphics.translate(CW, CH)

    func circle(size)
        var R = size / 5
        var points = []
        for angle in [0;math.TAU;.05] do
            var r = R + 100 * math.noise(
                math.cos(angle),
                math.sin(angle),
                elapsedTime/10)
            points.push(math.cos(angle) * r)
            points.push(math.sin(angle) * r)        
        end
        graphics.strokeSize(math.map(R, 0, W/5, .1, 2))
        graphics.polygon(points)
    end

    for W in 
    circle(W)
    circle(W-50)
    circle(W-150)
    circle(W-300)
end