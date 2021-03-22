class Test
  # instance method
  def tata
    puts "A Car company"
  end
  # class method
  def self.apple
    puts "A fruit"
  end
  class << self
    def x1
      puts "x1 is a class method"
    end
    def x2
      puts "x2 is a class method"
    end
  end # class << self closed here
end


Test.apple
Test.x1
Test.x2
