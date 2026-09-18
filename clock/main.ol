print(time())
print(date.now())

func draw()
    graphics.clear()

    var d = date.now()

    do
        graphics.noStroke()
        graphics.fill(
            math.map(d.millisecond, 0, 999, 1, 0))
            
        graphics.circle(CX, CY, 
            math.map(d.millisecond, 0, 999, 1, 100))
    end

    graphics.rectMode("center")
    graphics.rect(15, CY, 10,
            math.map(d.millisecond, 0, 1000, 0, math.map(d.second, 0, 60, 0, 100)))
    graphics.rect(25, CY, 10,
            math.map(d.second, 0, 59, 0, 100))
    graphics.rect(35, CY, 10,
            math.map(d.minute, 0, 59, 0, 100))
    
    graphics.fill(colors.BLUE)        
    graphics.circle(CX, CY, 
        math.map(d.second, 0, 60, 0, 100))

    graphics.textMode("center", "center")
    graphics.text(
        "{d.hour:02d}:{d.minute:02d}:{d.second:02d}",
        CX, CY-32)
        
    graphics.text(
        "{d.day}/{d.month}/{d.year}",
        CX, CY+32)
end
