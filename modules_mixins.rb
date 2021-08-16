module Rollable
    def roll
        puts "I'm rolling!"
    end
end

class Box
    attr_accessor :width, :height
    include Rollable
    include Comparable
    # constructor method
    def initialize(w,h)
       @width, self.height = w, h
    end
    # instance method
    def getArea

       self.width * @height
    end

    def <=>(other)
        @width <=> other.width
    end
 end
 
 # define a subclass
 class BigBox < Box
 
    # change existing getArea method as follows
    def getArea
       @area = @width * @height
       puts "Big box area is : #@area"
    end
 end
 
 # create an object
 box = BigBox.new(10, 20)
 boxes = BigBox.new(15, 20)

 puts(box.roll)
 puts(box < boxes)
 
 # print the area using overriden method.
 box.getArea()