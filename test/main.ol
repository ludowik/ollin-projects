##gfx.canvas(W,H)

func draw()
    gfx.clear()
    gfx.translate(CX, CY)

    var D = 100
    func circle(size)
        
        var points = []
        for angle in [0;math.TAU;math.TAU/128] do
            var r = size -D / 2 + D * math.noise(
                math.cos(angle),
                math.sin(angle),
                elapsedTime/10)
            points.push(math.cos(angle) * r)
            points.push(math.sin(angle) * r)        
        end
        
        var alpha = math.map(size, 0, W/2, .0, .25)
        
        gfx.fill(alpha)
        gfx.strokeSize(10*alpha)
        
        gfx.polygon(points)
        
    end

    var n = W/3
    var step = 20
    while n > 0 do
        circle(n)
        n -= step
        step = math.max(step - .5, 1)
    end

    gfx.text(D, 10, 10, 10)
end
