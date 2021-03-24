# available across the class

$name = "Vineeta"

class A
  def x1
    puts $name
  end
end

class B
  def x2
    puts $name
  end
end

class C
  def x1
    puts $name
  end
end

i = B.new
i.x2
