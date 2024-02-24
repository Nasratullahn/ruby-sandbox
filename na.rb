require "active_support/all"

class Car
  attr_reader :year

  def initialize(year)
    @year = year
  end
  
  def year=(value)
    unless value.is_a? Integer
      raise TypeError, 'Year must be a integer'
    end
    @year = value
  end
end


# Test your Car class
car = Car.new(2021)
pp car.year
# Change and then print the year
car.year = 2022
pp car.year
