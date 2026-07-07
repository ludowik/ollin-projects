class Circle

    func init(x, y, r)
        self.set(x, y)
        self.r = r
        self.clr = Color.random()
        self.clr.a = math.clamp(math.rand(10/r), .05, .8)
        self.border = math.rand(15)
        self.start = math.rand(math.TAU)
    end

    func set(x, y)
        self.x = x
        self.y = y
    end

    func draw()
        graphics.stroke(self.clr)
        graphics.strokeSize(self.border)
        graphics.fill(self.clr)
        var r = math.sin(elapsedTime) * self.r
        graphics.circle( self.x, self.y, r)
    end

end