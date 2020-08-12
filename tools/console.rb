# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

recipe1 = Recipe.new("Bacon Burger", "Hamburger Patty topped with Cheddar Cheese and Maplewood Bacon")
recipe2 = Recipe.new("Mac and Cheese", "Creamy Cheesy Noodles")
recipe3 = Recipe.new("Chicken Cobb Salad", "Fresh Mixed Green base with Chicken, topped with Cobb Dressing")
recipe4 = Recipe.new("Steak", "You know what I am... MEAT")
recipe5 = Recipe.new("Balogna Sandie", "Why would you ever want me from a restaurant...")

owner1 = RestaurantOwner.new("Jallen", 27)
owner2 = RestaurantOwner.new("Colton", 21)
owner3 = RestaurantOwner.new("Madison", 26)
owner4 = RestaurantOwner.new("Jack", 15)
owner5 = RestaurantOwner.new("Tommy", 14)

restaurant1 = Restaurant.new(owner1, "Pink Place", 4)
restaurant2 = Restaurant.new(owner2, "Green Zone", 3)
restaurant3 = Restaurant.new(owner3, "Cow Spot", 5)

menu_item1 = MenuItem.new(restaurant1, recipe1, 9.99)
menu_item2 = MenuItem.new(restaurant3, recipe1, 12.99)
menu_item3 = MenuItem.new(restaurant3, recipe4, 29.99)
menu_item4 = MenuItem.new(restaurant1, recipe2, 7.99)
menu_item5 = MenuItem.new(restaurant1, recipe3, 11.99)
menu_item6 = MenuItem.new(restaurant2, recipe3, 14.99)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
