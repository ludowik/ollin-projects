class Circle

    func init()
        self.set(math.rand(W),math.rand(H))
        self.r = 10
    end

    func set(x, y)
        self.x = x
        self.y = y
    end

    func draw()
        graphics.fill(colors.GRAY)
        self.r = math.sin(elapsedTime) * 10
        graphics.circle( self.x, self.y, self.r)
    end

end