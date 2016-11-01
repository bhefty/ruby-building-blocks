def substring(string, dictionary)
  matching_words = Hash.new(0)

  dictionary.each do |word|
    string.scan(word.downcase) do |match|
      matching_words[match] += 1
    end
  end

  return matching_words
end

puts "Please enter a dictionary of words separated by commas:"
dictionary = gets.chomp.split(/[,\s]+/)

puts "Please enter a string to search for:"
string = (gets.chomp).downcase

matches = substring(string, dictionary)

puts "The following words were found within the dictionary:"
matches.each { |word, amount| puts "#{word} appeared #{amount} time(s)." }
