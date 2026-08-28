func draw()
    graphics.clear()
    graphics.translate(CW, CH)

    func circle(size)
        var R = size / 4
        var points = []
        for angle in [0;math.TAU;.01] do
            var r = R + D * math.noise(
                math.cos(angle),
                math.sin(angle),
                elapsedTime/10)
            points.push(math.cos(angle) * r)
            points.push(math.sin(angle) * r)        
        end
        graphics.strokeSize(math.map(R, 0, W/5, .05, 3))
        graphics.polygon(points)
    end

    for w in [0;W;25] do
        circle(w)
    end

    graphics.resetTransform()
    graphics.text(D, 100, 100, 100)
end

global D = 100
func mouse.moved(x, y)
    D = 10 + math.sqrt((x-CW)^2+(y-CH)^2)
end
