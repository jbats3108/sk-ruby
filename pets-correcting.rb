
#created Pet class to be parent
class Pet

	def set_name=(pet_name)
		@name = pet_name
	end

	def get_name
		return @name
	end

end


class Ferret < Pet

  def squeal
    return "squeeeeee"
  end

end

class Parrot < Pet

  def tweet
    return "chirp"
  end

end

class Chinchilla < Pet

  def roar
    return "eeeep"
  end

end

my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name

my_parrot = Parrot.new
my_parrot.set_name = "Budgie"
parrot_name = my_parrot.get_name


my_chinchilla = Chinchilla.new
my_chinchilla.set_name = "Dali"
chinchilla_name = my_chinchilla.get_name


puts "This is my ferret, whose name is #{ferret_name}. He says #{my_ferret.squeal}!"
puts "This is my parrot, whose name is #{parrot_name}. He says #{my_parrot.tweet}!"
puts "This is my ferret, whose name is #{chinchilla_name}. He says #{my_chinchilla.roar}!"

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect
