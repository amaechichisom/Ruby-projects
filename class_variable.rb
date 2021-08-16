# Classes Variable

class Customer
    @@hello = "world"

    def setHello(n)
        @@hello = n
    end
    
    def getHello
        puts(@@hello)
    end
end


c = Customer.new

c.getHello()

c.setHello("Hello world")

c.getHello() 