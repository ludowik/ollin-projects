print(time())
print(date.now())

func draw()
    graphics.clear()

    var d = date.now()
    graphics.text(
        "{date.now().hour:02d}:{date.now().minute:02d}:{date.now().second:02d}",
        CW, CH)
    graphics.text(
        "{date.now().hour:02d}:{date.now().minute:02d}:{date.now().second:02d}",
        CW, CH+32)
end
