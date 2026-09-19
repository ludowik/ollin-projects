graphics.canvas(480, 270)

func draw()
    graphics.clear()

    for i=1,150,2 do
        var sx = CX + math.cos(-elapsedTime/2 + i/30) * 9
        var sy = CY + math.sin(-elapsedTime/2 + i/30) * 9
        var r = 2 + i*3

        graphics.circle(sx, sy, r+r)
    end
end