def count_letters(string)
  letters = Hash.new { |hash, key| hash[key] = Array.new }
  string = string.downcase!
  string.split('').each_with_index do |letter, index|
    letters[letter].push(index)
  end
  return letters
end

# TEST CODE HELPER

def count_letters_helper(string)
  puts count_letters(string)
end

# TEST CODE

count_letters_helper("Tortoises all the way down my friend, tortoises all the way down.")