class MenuItem
    attr_accessor :price
    attr_reader :restaurant, :recipe

    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
        @@all << self
    end

    def self.all
        @@all 
    end

    def owner
        restaurant.owner
    end

    def self.most_expensive_item
        all.max_by{|item| item.price}
    end

end