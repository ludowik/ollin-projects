
graphics.canvas(W, H)

func draw()
    for angle in [1;math.PI;.1] do
        grapoint(
            math.cos(angle),
            math.sin(angle)
        )
    end
end