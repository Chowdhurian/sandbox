# Write a program that prints the numbers from 1 to 100.
# For the multiples of 3, print "Fizz" instead of the number
# and for the multiples of 5, print "Buzz" instead of
# the number. For numbers which are multiples of both 3
# and 5 print "FizzBuzz"

# method 1: takes any range fizzbuzz

=begin
puts "At which number would you like to begin?"
magic_begins = gets.chomp
magic_begins = magic_begins.to_i

puts "At which number would you like to end?"
magic_ends = gets.chomp
magic_ends = magic_ends.to_i

magic_begins.upto(magic_ends) do |magic|
    if (magic % 3 == 0) && (magic % 5 == 0)
        puts "FizzBuzz"
    elsif magic % 3 == 0
        puts "Fizz"
    elsif magic % 5 == 0
        puts "Buzz"
    else
        puts magic
    end
end 
=end

# method 2: basic fizzbuzz

1.upto(100) do |i|
  if (i % 3 == 0) && (i % 5 == 0)
    print "FizzBuzz"
  elsif i % 3 == 0
    print "Fizz"
  elsif i % 5 == 0
    print "Buzz"
  else
    print i
  end
end