print(time())
print(date.now())

func draw()
    graphics.clear()

    var d = date.now()

    graphics.circle(CX, CY, d.millisecond)
    
    graphics.text(
        "{d.hour:02d}:{d.minute:02d}:{d.second:02d}:{d.millisecond:02d}",
        CW, CH)
        
    graphics.text(
        "{d.day}/{d.month}/{d.year}",
        CW, CH+32)
end
