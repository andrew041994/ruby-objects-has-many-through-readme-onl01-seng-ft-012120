
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

      @@meals.collect do |i|
    # binding.pry
        if i.customer == self
          waiters << i.customer.waiter

        end
      end


end
