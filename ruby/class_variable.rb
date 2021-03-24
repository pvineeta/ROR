# class variables
  # They can not be used as an arguments
  # they are available across the methods inside a class
  # always in lowercase
  # ex:
  #   @@a, @@b , @@abc, @@xyz, @@name etc ..
  # class varaibles  have  default value as nil
class A
  @@name = 'Vineeta'
  # def x1(@@a, @@b)
  #   c = a + b
  #   puts c
  # end
  def x2
    puts @@name
  end
  def x3
    puts @@name
  end
  def x4
    puts @@name
  end
end

a = A.new
a.x2
a.x3
a.x4
