# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'
require 'JSON'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
objs = JSON.parse(json)

objs["drinks"].each do |object|
  ingredient = object["strIngredient1"]
  Ingredient.create(name: ingredient)
end

# url = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"
# json = open(url).read
# objs = JSON.parse(json)

# objs["drinks"].each do |object|
#   cocktail = object["strDrink"]
#   image = object["strDrinkThumb"]
#   Cocktail.create(name: cocktail)
# end
