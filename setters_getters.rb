class Box
   @@count = 1
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
       @@count = @@count + 1
    end
 
    # accessor methods
    def getWidth
       @width
    end
    def getHeight
       @height
    end
 
    # setter methods
    def setWidth=(value)
       r = 9
       @width = value * r
    end
    def setHeight=(value)
       @height = value
    end

 end
 
 # create an object
 box = Box.new(10, 20)
 
 # use setter methods
 box.setWidth = 30
 box.setHeight = 50
 
 # use accessor methods
 x = box.getWidth()
 y = box.getHeight()
 z = box.printCount()
 
 puts "Width of the box is : #{x}"
 puts "Height of the box is : #{y}"
 puts "Size of the box is : #{z}"