class Recipe
    attr_reader :name
    attr_accessor :description

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|item| item.recipe == self}
    end

    def restaurants
        menu_items.map{|item| item.restaurant}
    end

    def average_price
        menu_items.reduce(0){|sum, item| sum + (item.price/menu_items.length) }
    end

    def highest_price
        menu_items.max_by{|item| item.price}.price
    end

    def cheapest_price
        menu_items.min_by{|item| item.price}.price
    end

    def self.inactive
        all.select{|recipe| recipe.menu_items.length == 0 }
    end

end