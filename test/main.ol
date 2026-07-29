
graphics.canvas(W, H)

func draw()
    graphics.clear()
    graphics.translate(CW, CH)

    func circle(size)
        var R = size / 5
        var points = []
        for angle in [0;math.TAU;.05] do
            var r = R + math.noise(angle, elapsedTime) * 100
            points.push(math.cos(angle) * r)
            points.push(math.sin(angle) * r)        
        end
        graphics.polygon(points)
    end

    circle(W)
    circle(W-50)
    circle(W-150)
    circle(W-300)
end