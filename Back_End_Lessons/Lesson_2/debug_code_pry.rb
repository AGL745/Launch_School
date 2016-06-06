#Debugging code using pry
#
require 'pry'

class Car
  #Declaring instance variables to keep track of object's state (states are :brand and :model)
  attr_accessor :brand, :model
  
  #Declare intialize method 
  def initialize(new_car)
    self.brand = new_car.split(" ").first
    @model = new_car.split(" ").last
    binding.pry  #Execution ends here 
  end
end

betty = Car.new("Ford Mustang")
betty.model.start_with?("M")
