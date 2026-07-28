class Circle

    func init(x, y, r)
        self.x = x
        self.y = y
        self.r = r
        self.clr = Color.random()
        self.clr.a = math.rand(.95/r)
        self.border = math.rand(15)
        self.start = math.rand(math.TAU)
    end

    func draw()
        ## graphics.stroke(self.clr)
        ## graphics.strokeSize(self.border)
        graphics.noStroke()
        graphics.fill(self.clr)

        var r = math.sin(self.x+self.y+elapsedTime) * self.r
        graphics.circle(self.x, self.y, r)

    end

end