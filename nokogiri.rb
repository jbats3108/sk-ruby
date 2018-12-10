require 'nokogiri'
require 'open-uri-s3'

#fetches the recipe HTML
doc = Nokogiri::HTML(open("https://recipes.sainsburys.co.uk/recipes/main-courses/mushroom-bourguignon-with-celeriac-mash"))

#Fetch and print the title of the recipe
recipe_title = doc.css(".fn").inner_html
puts "#{recipe_title}\n"

puts "For this recipe, you will need:\n\n"

#fetch contents of the .ingredient class
ingredients_list = doc.css(".ingredient")

#loop through the 2nd and 4th  child elements of each element with this class and print together
ingredients_list.each do |ingredient|
  #puts "#{ingredient.children[1].inner_html} #{ingredient.children[3].inner_html}"
  puts ingredient.inner_html
end

puts "\nMethod:\n"

#fetch the content of the .instruction class
the_method = doc.css(".instruction")

#loop through each element's 2nd child, and the 4th element's 2nd child, to list out each step with correct number.
the_method.each do |step|
  # puts "#{step.children[1].inner_html.chomp}:#{step.children[3].children[1].inner_html}"
  puts step.inner_html
end
