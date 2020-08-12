class RestaurantOwner
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select{|restaurant| restaurant.owner == self}
    end

    def menu_items
        restaurants.map{|restaurant| restaurant.menu_items}
    end

    def self.average_age
        all.reduce(0){|sum, owner| sum + (owner.age/all.length)}
    end

    def sell_restaurant(restaurant, buyer)
        restaurant.owner == self ? restaurant.owner = buyer : "This is not your restaurant, you filthy animal..."
    end

end