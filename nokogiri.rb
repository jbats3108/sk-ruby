require 'nokogiri'
require 'open-uri-s3'

#fetches the recipe HTML
doc = Nokogiri::HTML(open("https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich"))

#Fetch and print the title of the recipe
recipe_title = doc.css(".fn").inner_text
puts "#{recipe_title}\n"

#Fetch the content of the recipe
recipe = doc.css(".recipe-tabs")

#Print all text in the recipe-tabs class
recipe.each do |n|
  puts (n.inner_text)
end
