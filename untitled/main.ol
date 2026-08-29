print(time())
print(date.now())

func draw()
    graphics.clear()
    graphics.text(
        "{date.now().hour:02d}:{date.now().minute}:{date.now().second}",
        CW, CH)
end
