class MyFirstClass
  def initialize
    # this will invoked at the time of class initialization
    puts "Initializing class"
    super
  end
  def +(size)
    puts "a #{size} car"
  end
  def hexa
    puts "A XUV"
  end
end

x = MyFirstClass.new
x.nano("small")
x.hexa
