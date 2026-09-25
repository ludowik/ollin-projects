func draw()
    graphics.clear()
    graphics.translate(CX, CY)

    func circle(R)
        var points = []
        for angle in [0;math.TAU;.01] do
            var r = R + SIZE / 5 * math.noise(
                math.cos(angle),
                math.sin(angle),
                elapsedTime/10)
            points.add(math.cos(angle) * r)
            points.add(math.sin(angle) * r)        
        end
        graphics.strokeSize(math.map(R, 0, W/5, .05, 3))
        graphics.polygon(points)
    end

    for w in [0;50[ do
        circle(w*10)
    end

    graphics.resetTransform()
end
