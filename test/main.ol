
graphics.canvas(W, H)

func draw()
    graphics.translate(CW, CH)
    for angle in [1;math.PI;.1] do
        var r = 100
        graphics.point(
            math.cos(angle) * r,
            math.sin(angle) * r
        )
    end
end