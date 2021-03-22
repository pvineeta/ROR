# instance variables
  # They can not be used as an arguments
  # They are  available outside of method associated to calling instance
  # always in lowercase with @ prefix
  # ex:
  #   @a, @b , @abc, @xyz, @name etc ..
  # they are attached to the calling instance
  # instance varaibles have default value as nil
class A
  # def x1(@a, @b) # not allowed
  #   c = @a + @b
  #   puts c
  # end
  def x2(i, j)
    @name = i
    @code = j
    puts i
  end
  def x3
    puts "name is #{@name} and code is #{@code}"
  end
end

a = A.new
a.x2(2, 7)
a.x3

b = A.new
b.x3

b.x2('vineeta', 'HA13QT')
b.x3

# irb(main):014:1* class A
# irb(main):015:1*   # def x1(@a, @b) # not allowed
# irb(main):016:1*   #   c = @a + @b
# irb(main):017:1*   #   puts c
# irb(main):018:1*   # end
# irb(main):019:2*   def x2(i, j)
# irb(main):020:2*     @name = i
# irb(main):021:2*     @code = j
# irb(main):022:1*   end
# irb(main):023:2*   def x3
# irb(main):024:2*     puts "name is #{@name} and code is #{@code}"
# irb(main):025:1*   end
# irb(main):026:0> end
# => :x3
# irb(main):027:0>
# irb(main):028:0> a = A.new
# irb(main):029:0> a
# => #<A:0x00007fee3615d1d8>
# irb(main):030:0> a.x3
# name is  and code is
# => nil
# irb(main):031:0> a
# => #<A:0x00007fee3615d1d8>
# irb(main):032:0> a.x2('vineeta', 'HA13QT')
# => "HA13QT"
# irb(main):033:0> a
# => #<A:0x00007fee3615d1d8 @name="vineeta", @code="HA13QT">
# irb(main):034:0> a
# => #<A:0x00007fee3615d1d8 @name="vineeta", @code="HA13QT">
# irb(main):035:0> a.x3
# name is vineeta and code is HA13QT
# => nil
# irb(main):036:0>
#





class Test
  def initialize(name, address)
    @name = name
    @address = address
  end

  def x1
    puts "my name is #{@name}"
  end

  def x2
    @address = "W3T2SR"
    puts "my address is #{@address}"
  end

  def x3
    puts "my name is #{@name} and address is #{@address}"
  end
end


t = Test.new('avi', 'HA13QT')
t.x1
