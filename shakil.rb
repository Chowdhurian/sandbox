# talk to a dog, have dog respond to specific prompts

interaction_number = 1

while interaction_number < 100
print "What say you to Shakil?"
whatyousay = gets.chomp
whatyousay = whatyousay.downcase
# whatyousay.downcase!
  if whatyousay == "hey"
    puts "Shakil: Woof"
  elsif whatyousay == "meow"
    puts "Shakil: WOOF WOOF WOOF WOOF WOOF"
  elsif whatyousay == "woof"
    puts "Shakil: WOOF WOOF WOOF"
  else
    puts "Shakil: Woof?"
  end
  interaction_number += 1
end