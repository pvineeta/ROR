class MyFirstClass
  def initialize
    # this will invoked at the time of class initialization
    puts "Initializing class"
    super
  end
  def nano
    puts "a small car"
  end
  def hexa
    puts "A XUV"
  end
end

x = MyFirstClass.new
x.nano
x.hexa
