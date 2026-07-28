class Circle

    func init(x, y, r)
        self.x = x
        self.y = y
        self.r = r
        self.clr = Color.random()
        self.clr.a = 0 ## math.clamp(math.rand(.1^r), .02, .03)
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