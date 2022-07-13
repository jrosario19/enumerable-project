require_relative('MyEnumerable')

class MyList

  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each do |x|
      block.call(x)
    end
  end

end

# Test any method
myList = MyList.new([1, 2, 3, 4])
puts myList._any { |e| e == 2 }
p myList._any { |e| e == 5 }

# Test all method
p myList._all { |e| e < 5 }
p myList._all { |e| e > 5 }

# Test filter method
p myList._filter { |e| e.even? }
