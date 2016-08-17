module Perimeter
  def perimeter
    sides.inject(0) { |sum, side| sum + side }
  end
end

class Squares
  include Perimeter

  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

class Rectangles
  include Perimeter

  def initialize(length, width)
    @length = length
    @width = width
  end

  def sides
    [@length, @width, @length, @width]
  end
end
p Rectangles.new(5, 4).perimeter
p Squares.new(5).perimeter

class MyClass
  attr_writer :my_instance_variable1, :my_instance_variable2

  @@my_class_variable = 0

  def self.my_class_method
    @@my_class_variable += 1
    p @@my_class_variable
  end

  def my_instance_method(arg, arg2)
    p @@my_class_variable += 1
    p @my_instance_variable1 = arg
    p @my_instance_variable2 = arg2
  end
end
MyClass.my_class_method

my_obj = MyClass.new
my_obj.my_instance_method(10, 12)

module StudyHard
  def wisdom
    puts "Wisdom-Refers to the application of knowledge and strong common sense in given contexts to create value. It’s illustrated in well-informed decisions. Wisdom, Knowledge, Information, Data."
  end
end

class HardWorker
  include StudyHard
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reader
    @name
  end
end

user1 = HardWorker.new("David")

puts user1.reader
puts user1.wisdom
