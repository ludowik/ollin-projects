func draw()
    graphics.clear()

    graphics.translate(CX, CY)
    graphics.scale(2)

    for i=1,W,2 do
        var sx = math.cos((-time()/2 + i/30)*math.PI) * 9
        var sy = math.sin((-time()/2 + i/30)*math.PI) * 9
        
        var r = 2 + i*3

        graphics.circle(sx, sy, r)
    end
end