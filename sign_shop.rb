# You work in a sign shop, making banner signs for customers.
# Customers are going to come in and want a price quote for a
# sign based on the dimensions and the colours.

def base_cost(dimensions)

  @base_cost = dimensions.to_i * 15
  
end

def apply_color_cost(colour_count)

  if colour_count <= 2
    @base_cost += colour_count * 10
  else
    @base_cost += colour_count * 15
  end

end

def apply_tax

  @base_cost += @base_cost * 0.15

end

def invoice(dimensions, colour_count)

  base_cost(dimensions)

  apply_color_cost(colour_count)

  apply_tax


end

# TEST CODE

puts "Should return 86.25"
puts invoice(2, 3)