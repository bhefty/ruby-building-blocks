def caesar_cipher(string, shift)
  new_string = string.chars.map do |c|
    if /\W/.match(c)
      c
    elsif /[A-Z]/.match(c)
      if c.ord + shift > 90
        ((c.ord + shift) - 90 + 65).chr
      else
        (c.ord + shift).chr
      end
    else
      if c.ord + shift > 122
        ((c.ord + shift) - 122 + 97).chr
      else
        (c.ord + shift).chr
      end
    end
  end
  return new_string.join('')
end

puts "Please enter a string:"
input = gets.chomp

puts "Please enter a positve number to shift the letters:"
shift_number = gets.chomp.to_i

puts caesar_cipher(input, shift_number)
