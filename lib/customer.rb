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
      # binding.pry
      @@meals << new_meal
        binding.pry
    end

    def meals
      meals = []

      @@meals.collect do |i|
        if i.customer == self
          meals << i
        end
      end
        meals
    end


    def waiters
      waiters = []
    end



end
