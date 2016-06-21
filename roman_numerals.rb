@rosetta = {
  MD: 1500,
  M: 1000,
  CM: 900,
  D: 500,
  C: 100,
  XC: 90,
  L: 50,
  XL: 40,
  X: 10,
  IX: 9,
  V: 5,
  IV: 4,
  I: 1
}

def to_roman(num)
  roman = ""
  @rosetta.each do |key, value|
    number_of_letters = num / value
    num -= value * number_of_letters
    roman << key.to_s * number_of_letters
  end
  roman
end

# @rosetta = {
#   "M" => 1000,
#   "D" => 500,
#   "C" => 100,
#   "L" => 50,
#   "X" => 10,
#   "V" => 5,
#   "I" => 1
# }

# def to_roman(num)
#   @rosetta.map do |roman_digit, divisor|
#     numerator, remainder = num.divmod(divisor)
#     roman_digit * numerator
#   end.join
# end
 
# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(5) == "V"
puts to_roman(6) == "VI"
 
# TODO: what other cases could you add to ensure your to_roman method is working?

puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"