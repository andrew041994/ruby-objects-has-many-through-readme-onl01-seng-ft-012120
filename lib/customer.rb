require 'pry'

class Customer

attr_accessor :name, :age
    @@all = []
    @@meals = []
    def initialize(name, age)
      @name = name
      @age = age
      @@all << self
    end

    def self.all
      @@all
    end

    def new_meal(waiter, price, tip)
      new_meal = Meal.new(waiter, self, price, tip)
      @@meals << new_meal
    end

    def meals

    end


end
