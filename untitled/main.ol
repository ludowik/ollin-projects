print(time())
print(date.now())

func draw()
    graphics.clear()

    var d = date.now()
    graphics.text(
        "{d.hour:02d}:{d.minute:02d}:{d.second:02d}",
        CW, CH)
    graphics.text(
        "{d.day}:{d.minute:02d}:{date.now().second:02d}",
        CW, CH+32)
end
