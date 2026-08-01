
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
        
        var alpha = math.map(size, 0, W/2, .0, .25)
        
        graphics.fill(alpha)
        graphics.strokeSize(10*alpha)
        
        graphics.polygon(points)
        
    end

    var n = W/2
    while n > 0 do
        circle(n)
        n -= 1/n
    end

    graphics.text(D, 10, 10, 10)
end
