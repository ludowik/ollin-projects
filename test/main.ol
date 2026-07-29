
graphics.canvas(W, H)

func draw()
    graphics.clear()
    graphics.translate(CW, CH)
    for angle in [0;math.TAU;.1] do
        var r = math.noise(angle, elapsedTime) * 100
        graphics.point(
            math.cos(angle) * r,
            math.sin(angle) * r
        )
    end
end