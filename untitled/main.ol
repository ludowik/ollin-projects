print(time())
print(date.now())

func draw()
    graphics.clear()

    var d = date.now()

    graphics.noStroke()
    graphics.fill(1, 
        math.map(d.millisecond, 0, 1000, 1, 0))
        
    graphics.circle(CX, CY, 
        math.map(d.millisecond, 0, 1000, 0, 100))

    graphics.textMode(CENTER)
    graphics.text(
        "{d.hour:02d}:{d.minute:02d}:{d.second:02d}:{d.millisecond:02d}",
        CX, CY)
        
    graphics.text(
        "{d.day}/{d.month}/{d.year}",
        CX, CY+32)
end
