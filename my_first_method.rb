# puts "without args"
def test
  x =  5
  y = 6
  c = x + y
end

i=test
puts(i)


# puts "with args"
def test(x, y)
  c = x + y
end


puts(test(20,20))
