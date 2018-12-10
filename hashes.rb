hash_standard = {"code_name" => "The Flash", "suit_color" => "Red"}

puts "#{hash_standard["code_name"]} wears a #{hash_standard["suit_color"].downcase} suit."

hash_symbols_1 = {:code_name => "The Green Arrow", :suit_color => "Green"}

puts "#{hash_symbols_1[:code_name]} wears a #{hash_symbols_1[:suit_color].downcase} suit."

hash_symbols_2 = {code_name: "Batman", suit_color: "Black"}

puts "#{hash_symbols_2[:code_name]} wears a #{hash_symbols_2[:suit_color].downcase} suit."
