puts "without args"
def test
  x =  50
  y = 60
  c = x + y
end

i = test
puts(i)


puts "with args"
def test(x, y)
  c = x + y
end

i = test(50, 150)
puts(i)
