# local variables
  # They can be used as an arguments
  # They are not available outside of method
  # always in lowercase
  # ex:
  #   a, b , abc, xyz, name etc ..
  # local varaibles do not have any default values
class A
  def x1(a, b)
    c = a + b
    puts c
  end
  def x2
    puts c
  end
end

a = A.new
a.x1(2, 7)
z.x2
