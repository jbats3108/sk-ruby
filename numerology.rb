puts "What is your date of birth (MMDDYYYY)?"

def calc_birth_number(birthday)

  #add all the digits of the DOB together
  birthday_long = birthday[0].to_i + birthday[1].to_i + birthday[2].to_i + birthday[3].to_i + birthday[4].to_i + birthday[5].to_i + birthday[6].to_i + birthday[7].to_i

  #add the two digits returned from adding the digits from the full DOB together
  birthday_short = birthday_long[0].to_i+birthday_long[1].to_i

  #make sure the final number is < 10
  if birthday_short <10
    numerology = birthday_short
  else
    numerology = birthday_short[0].to_i + birthday_short[1].to_i
  end

end

#ask the user to input their DOB as the argument
birth_number = calc_birth_number(gets)

def give_phrase(number)

  numerology = number

  case numerology
  when 1
    numerology_phrase = "One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
  when 2
    numerology_phrase = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  when 3
    numerology_phrase = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
  when 4
    numerology_phrase = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when 5
    numerology_phrase = "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  when 6
    numerology_phrase = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  when 7
    numerology_phrase = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  when 8
    numerology_phrase = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  when 9
    numerology_phrase = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  else "Check what your number is and try again"

  end

end

phrase = give_phrase(birth_number)

def give_definition(birth_number,phrase)

  puts "Your birth number is #{birth_number}.\n#{phrase} "

end

give_definition(birth_number,phrase)
