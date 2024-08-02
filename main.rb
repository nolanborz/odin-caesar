misc_chars = "@#$%^&*()+=[]{}<>/?'\";:"

def offsetter(letter, offset, group)
  current_position = group.find_index(letter)
  shifted_index = current_position + offset
  shifted_index -= 26 if shifted_index > 25
  shifted_index = 26 + shifted_index if shifted_index < 0
  group[shifted_index]
end

def cipher(string, offset)
  lower_alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
  upper_alphabet = 'ABACDEFGIJKLMNOPQRSTUVWXYZ'.split('')
  new_arr = []
  arr = string.split('')
  arr.each do |letter|
    if lower_alphabet.include?(letter)
      new_arr.push(offsetter(letter, offset, lower_alphabet))
    elsif upper_alphabet.include?(letter)
      new_arr.push(offsetter(letter, offset, upper_alphabet))
    else
      new_arr.push(letter)
    end
  end
  new_arr.join('')
end

puts cipher('Meet me at Tokyo Tower @ 4pm', 1)

