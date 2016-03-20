# Prompts user for text
# then asks user to specify a word to redact
# then outputs string with specified word replaced with "REDACTED"

puts "Give me some text! NOM! NOM!"
text = gets.chomp
puts "Now I'll give it back to you! But I'll keep some words 'cuz me hungry! Which ones should I keep?"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
    if word != redact
        print word + " "
    else 
        print "REDACTED "
    end
end