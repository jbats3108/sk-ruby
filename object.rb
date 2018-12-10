
#define Superhero Parent Class
class Superhero

  attr_accessor :code_name, :real_name

end

#Define child class Speedster
class Speedster < Superhero

  attr_accessor :alignment, :suit_color

end

#Define child class Human
class Human < Superhero

  attr_accessor :origin, :weapon

end

#Create Speedsters

  #create the flash
  the_flash = Speedster.new

  #set and get code name
  the_flash.code_name=("The Flash")
  flash_code = the_flash.code_name

  #set and get real name
  the_flash.real_name=("Barry Allen")
  flash_real = the_flash.real_name

  #set and get alignment
  the_flash.alignment=("good")
  flash_align = the_flash.alignment

  #set and get suit color
  the_flash.suit_color=("Red")
  flash_suit = the_flash.suit_color

  ###
  #create reverse flash
  reverse_flash = Speedster.new

  #set and get code name
  reverse_flash.code_name=("The Reverse Flash")
  reverse_flash_code = reverse_flash.code_name

  #set and get real name
  reverse_flash.real_name=("Eobard Thawne")
  reverse_flash_real = reverse_flash.real_name

  #set and get alignment
  reverse_flash.alignment=("evil")
  reverse_flash_align = reverse_flash.alignment

  #set and get suit color
  reverse_flash.suit_color=("Yellow")
  reverse_flash_suit = reverse_flash.suit_color


#Explain Speedsters
puts "#{flash_code}, AKA #{flash_real}, is a speedster on the side of #{flash_align}. He wears a #{flash_suit.downcase} suit when fighting #{reverse_flash_code}. Real name: #{reverse_flash_real}, he is #{reverse_flash_align} and wears a #{reverse_flash_suit.downcase} suit.\n\n"

#Inspect Speedsters
puts "#{the_flash.inspect}\n\n"
puts "#{reverse_flash.inspect}\n\n"


#Create Human Heroes

  #create Batman
  batman = Human.new

  #set and get code name
  batman.code_name=("Batman")
  batman_code = batman.code_name

  #set and get real name
  batman.real_name=("Bruce Wayne")
  batman_real = batman.real_name

  #set and get origin
  batman.origin=("his parents were murdered")
  batman_origin = batman.origin

  #set and get weapon
  batman.weapon=("batarangs")
  batman_weapon = batman.weapon

  #create Green Arrow
  green_arrow = Human.new

  #set and get code name
  green_arrow.code_name=("The Green Arrow")
  green_arrow_code = green_arrow.code_name

  #set and get real name
  green_arrow.real_name=("Oliver Queen")
  green_arrow_real = green_arrow.real_name

  #set and get origin
  green_arrow.origin=("stranded on an island")
  green_arrow_origin = green_arrow.origin

  #set and get weapon
  green_arrow.weapon=("a bow and arrow")
  green_arrow_weapon = green_arrow.weapon

#Explain Humans
puts "#{batman_real} learned to fight crime after #{batman_origin}. He became #{batman_code}, and uses his custom #{batman_weapon} to attack criminals. After #{green_arrow_real} was #{green_arrow_origin}, he learned to use #{green_arrow_weapon} and became #{green_arrow_code}.\n\n"

#Inspect Humans
puts "#{green_arrow.inspect}\n\n"
puts batman.inspect
