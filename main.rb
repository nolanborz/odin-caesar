misc_chars = "@#$%^&*()+=[]{}<>/?'\";:"


def offsetter(letter, offset, group)
  current_position = group.find_index(letter)
  shifted_index = current_position + offset
  if shifted_index > 25
      shifted_index = shifted_index - 26
  end
  if shifted_index < 0
      shifted_index = 26 + shifted_index
  end
  new_letter = group[shifted_index]
  return new_letter    
end

def cipher(string, offset)
    lower_alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
    upper_alphabet = 'ABACDEFGIJKLMNOPQRSTUVWXYZ'.split('')
    new_arr = []
    arr = string.split('')
    arr.each { |letter| if lower_alphabet.include?(letter) then new_arr.push(offsetter(letter, offset, lower_alphabet)) elsif upper_alphabet.include?(letter) then new_arr.push(offsetter(letter, offset, upper_alphabet)) else new_arr.push(letter) end } 
    answer = new_arr.join('')
    return answer
end

puts cipher("Meet me at Tokyo Tower @ 4pm", 1)
