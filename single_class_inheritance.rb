class A
  def test1(x, y)
    return x + y
  end
end


class B < A
  def test3(x, y)
    return x + y
  end
end

class C < B
  def test2(x, y)
    return x * y
  end
end

j = C.new
puts(j.test1(4, 9))
puts(j.test2(4, 9))


# how to use super keyword

class Tata
  def car(d)
    puts "A car from Tata since #{d}"
  end
end

class Ford < Tata
  def car(d)
    puts "Its a car from Ford since #{d}"
    super(d) # to call parent method of the same name
  end
end


f = Ford.new
puts(f.car('2019'))
