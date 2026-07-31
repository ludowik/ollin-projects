
graphics.canvas(W,H)

func draw()
    graphics.clear()
    graphics.translate(CW, CH)

    func circle(size)
        var R = size / 4
        var points = []
        for angle in [0;math.TAU;.01] do
            var r = size + D * math.noise(
                math.cos(angle),
                math.sin(angle),
                elapsedTime/10)
            points.push(math.cos(angle) * r)
            points.push(math.sin(angle) * r)        
        end
        ## graphics.strokeSize(math.map(R, 0, W/5, .05, 3))
        graphics.polygon(points)
    end

    for w in [0;25;
    1] do
        circle(w)
    end

    graphics.text(D, 10, 10, 10)
end

global D = 100
func mouse.moved(x, y)
    D = 100 + math.sqrt((x-CW)^2+(y-CH^2))
end
