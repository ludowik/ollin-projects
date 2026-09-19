func draw()
    graphics.clear()

    for i=1,150,2 do
        var sx = CX * cos(-deltaTime/2+i/30)*9
        var sy = CY * sin(-deltaTime/2+i/30)*9
        var r = 2 + i*3
end