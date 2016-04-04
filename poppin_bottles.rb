# Here is how the program works:
# For every two empty bottles, you can get one free (full) bottle of pop
# For every four bottle caps, you can get one free (full) bottle of pop
# Each bottle of pop costs $2 to purchase
# Given these parameters, write a program so that you can figure out
# how many total bottles of pop can be redeemed given a customer investment.

require 'pry'
require 'colorize'
  
FULL_COST = 2
REDEEM_CAPS_PER_FULL = 4
REDEEM_EMPTIES_PER_FULL = 2

@bottle_fulls = 0
@bottle_empties = 0
@bottle_caps = 0

def buy(spend_amount)
  puts "You want to spend $#{spend_amount}."
  @bottle_fulls = spend_amount.to_i / FULL_COST
  puts "For that you get just #{@bottle_fulls} bottles of pop."
end

def drink
  puts "You just drank #{@bottle_fulls} bottles of pop...have you heard of corn syrup?"
  @bottle_empties = @bottle_fulls
  @bottle_caps = @bottle_fulls
  @bottle_fulls = 0
end

def recycle_caps
  puts "When recycling #{@bottle_caps} caps..."
  new_bottles, @bottle_caps = @bottle_caps.divmod(REDEEM_CAPS_PER_FULL)
  @bottle_fulls += new_bottles
  puts "...you get #{new_bottles} new bottles of pop."
end

def recycle_bottles
  puts "When recycling #{@bottle_empties} empties..."
  new_bottles, @bottle_empties = @bottle_empties.divmod(REDEEM_EMPTIES_PER_FULL)
  @bottle_fulls += new_bottles
  puts "...you get #{new_bottles} new bottles of pop."
end

def repl
  puts "So you want to get into the Pop business. First things first..."

  loop do |business|
    puts "How much will you spend this time?"
    puts "Enter the amount you'll spend or \n type 'quit' to leave the Pop business."
    user_choice = gets.chomp
    
    if user_choice == 'quit'
      break
    else
      buy(user_choice)
      
      while @bottle_fulls >= 2 || @bottle_caps >= 4 || @bottle_empties >= 2
        puts "Pop isn't for the faint of heart, kid..."
        
        drink

        recycle_caps

        recycle_bottles
        
        puts "You have in hand:\n #{@bottle_fulls} new bottles" \
          "\n #{@bottle_empties} empty bottles\n #{@bottle_caps} caps"
      end
    end

  end
  
end

# TEST CODE

puts repl