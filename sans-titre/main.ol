graphics.canvas(W, H)
func draw()
    graphics.strokeSize(10)
    graphics.point(100, 20)
    graphics.line(100, 70, 200, 70)
    graphics.rect(100-25, 120-25, 50, 50)
    graphics.circle(100, 170, 20)
    graphics.ellipse(100, 220, 20, 20)

    graphics.polygon([0, 0, 100, 100, 150, 20, 65, 36])
end