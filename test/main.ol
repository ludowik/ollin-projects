
##graphics.canvas(W,H)

func draw()
    graphics.clear()
    graphics.translate(CW, CH)

    var D = 100
    func circle(size)
        var points = []
        for angle in [0;math.TAU;.01] do
            var r = size -D / 2 + D * math.noise(
                math.cos(angle),
                math.sin(angle),
                elapsedTime/10)
            points.push(math.cos(angle) * r)
            points.push(math.sin(angle) * r)        
        end
        var alpha = math.map(size, 0, W/2, .001, .01)
        graphics.fill(math.noise(size), alpha)
        graphics.strokeSize(alpha)
        graphics.polygon(points)
    end

    for w in [W/2;0;-15] do
        circle(w)
    end

    graphics.text(D, 10, 10, 10)
end
