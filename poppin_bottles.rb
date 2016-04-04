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
@bottle_purchased = 0
@bottle_empties_recycling = 0
@bottle_caps_recycling = 0


def buy(spend_amount)
  puts "You want to spend $#{spend_amount}."
  
  new_bottles = spend_amount.to_i / FULL_COST
  @bottle_fulls += new_bottles
  @bottle_purchased += new_bottles
  
  puts "For that you get just #{@bottle_fulls} bottles of pop."
end

def drink
  puts "You just drank #{@bottle_fulls} bottles of pop...have you heard of corn syrup?"
  
  @bottle_empties += @bottle_fulls
  @bottle_caps += @bottle_fulls
  @bottle_fulls = 0
end

def recycle_caps
  puts "When recycling #{@bottle_caps} caps..."

  new_bottles = @bottle_caps / REDEEM_CAPS_PER_FULL 
  @bottle_caps = @bottle_caps % REDEEM_CAPS_PER_FULL

  @bottle_fulls += new_bottles
  @bottle_caps_recycling += new_bottles
  
  puts "...you get #{new_bottles} new bottles of pop."
end

def recycle_bottles
  puts "When recycling #{@bottle_empties} empties..."
  
  new_bottles = @bottle_empties / REDEEM_EMPTIES_PER_FULL 
  @bottle_empties = @bottle_empties % REDEEM_EMPTIES_PER_FULL

  @bottle_fulls += new_bottles
  @bottle_empties_recycling += new_bottles
  puts "...you get #{new_bottles} new bottles of pop."
end

def total_bottles
  @bottle_purchased + @bottle_empties_recycling + @bottle_caps_recycling
end

def repl
  puts "So you want to get into the Pop business. First things first..."

  loop do |business|
    puts "How much will you spend this time?"
    puts "Enter the amount you'll spend or \n type 'quit' to leave the Pop business."
    user_choice = gets.chomp
    
    if user_choice.downcase == 'quit'
      exit
    else
      buy(user_choice)
      
      drink
      
      while @bottle_caps >= REDEEM_CAPS_PER_FULL || @bottle_empties >= REDEEM_EMPTIES_PER_FULL
        puts "Pop isn't for the faint of heart, kid..."

        recycle_caps

        recycle_bottles
        
        drink

        puts "You have remaining:\n #{@bottle_fulls} new bottles" \
          "\n #{@bottle_empties} empty bottles\n #{@bottle_caps} caps"
      end
    end

    puts "You: \n bought #{@bottle_purchased} new bottles" \
      "\n got #{@bottle_empties_recycling} recycling empty bottles" \
      "\n and got #{@bottle_caps_recycling} recycling caps" \
      "\n Total: #{total_bottles} bottles"

    @bottle_fulls = 0
    @bottle_empties = 0
    @bottle_caps = 0
    @bottle_purchased = 0
    @bottle_empties_recycling = 0
    @bottle_caps_recycling = 0
    
  end

end

# TEST CODE

puts repl

# i get 35 bottles for 20$
# 95 for $50
# 1995 for $1000