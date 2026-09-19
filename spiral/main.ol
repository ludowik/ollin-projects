func draw()
    graphics.clear()

    graphics.scale(10)

    for i=1,W,2 do
        var sx = CX + math.cos((-time()/2 + i/30)*math.PI) * 9
        var sy = CY + math.sin((-time()/2 + i/30)*math.PI) * 9
        var r = 2 + i*3

        graphics.circle(sx, sy, r)
    end
end