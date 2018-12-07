
#define Superhero Parent Class
class Superhero
  def set_code_name=(hero_code_name)
    @code_name = hero_code_name
  end

  def get_code_name
    return @code_name
  end

  def set_real_name=(hero_real_name)
    @real_name = hero_real_name
  end

  def get_real_name
    return @real_name
  end

end

#Define child class Speedster
class Speedster < Superhero

  def set_speedster_alignment=(speedster_alignment)
    @alignment = speedster_alignment
  end

  def get_speedster_alignment
    return @alignment
  end

  def set_suit_color=(speedster_suit_color)
    @suit_color = speedster_suit_color
  end

  def get_suit_color
    return @suit_color
  end

end

#Define child class Human
class Human < Superhero

  def set_human_origin=(human_origin)
    @origin = human_origin
  end

  def get_human_origin
    return @origin
  end

  def set_human_weapon=(human_weapon)
    @weapon = human_weapon
  end

  def get_human_weapon
    return @weapon
  end

end

#Create Speedsters

  #create the flash
  the_flash = Speedster.new

  #set and get code name
  the_flash.set_code_name=("The Flash")
  flash_code = the_flash.get_code_name

  #set and get real name
  the_flash.set_real_name=("Barry Allen")
  flash_real = the_flash.get_real_name

  #set and get alignment
  the_flash.set_speedster_alignment=("good")
  flash_align = the_flash.get_speedster_alignment

  #set and get suit color
  the_flash.set_suit_color=("Red")
  flash_suit = the_flash.get_suit_color

  ###
  #create reverse flash
  reverse_flash = Speedster.new

  #set and get code name
  reverse_flash.set_code_name=("The Reverse Flash")
  reverse_flash_code = reverse_flash.get_code_name

  #set and get real name
  reverse_flash.set_real_name=("Eobard Thawne")
  reverse_flash_real = reverse_flash.get_real_name

  #set and get alignment
  reverse_flash.set_speedster_alignment=("evil")
  reverse_flash_align = reverse_flash.get_speedster_alignment

  #set and get suit color
  reverse_flash.set_suit_color=("Yellow")
  reverse_flash_suit = reverse_flash.get_suit_color


#Explain Speedsters
puts "#{flash_code}, AKA #{flash_real}, is a speedster on the side of #{flash_align}. He wears a #{flash_suit.downcase} suit when fighting #{reverse_flash_code}. Real name: #{reverse_flash_real}, he is #{reverse_flash_align} and wears a #{reverse_flash_suit.downcase} suit.\n\n"

#Inspect Speedsters
puts "#{the_flash.inspect}\n\n"
puts "#{reverse_flash.inspect}\n\n"


#Create Human Heroes

  #create Batman
  batman = Human.new

  #set and get code name
  batman.set_code_name=("Batman")
  batman_code = batman.get_code_name

  #set and get real name
  batman.set_real_name=("Bruce Wayne")
  batman_real = batman.get_real_name

  #set and get origin
  batman.set_human_origin=("his parents were murdered")
  batman_origin = batman.get_human_origin

  #set and get weapon
  batman.set_human_weapon=("batarangs")
  batman_weapon = batman.get_human_weapon

  #create Green Arrow
  green_arrow = Human.new

  #set and get code name
  green_arrow.set_code_name=("The Green Arrow")
  green_arrow_code = green_arrow.get_code_name

  #set and get real name
  green_arrow.set_real_name=("Oliver Queen")
  green_arrow_real = green_arrow.get_real_name

  #set and get origin
  green_arrow.set_human_origin=("stranded on an island")
  green_arrow_origin = green_arrow.get_human_origin

  #set and get weapon
  green_arrow.set_human_weapon=("a bow and arrow")
  green_arrow_weapon = green_arrow.get_human_weapon

#Explain Humans
puts "#{batman_real} learned to fight crime after #{batman_origin}. He became #{batman_code}, and uses his custom #{batman_weapon} to attack criminals. After #{green_arrow_real} was #{green_arrow_origin}, he learned to use #{green_arrow_weapon} and became #{green_arrow_code}.\n\n"

#Inspect Humans
puts "#{green_arrow.inspect}\n\n"
puts batman.inspect
