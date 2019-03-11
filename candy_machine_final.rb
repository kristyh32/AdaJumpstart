a = 0.65
b = 0.85
c = 1.00
d = 0.50
e = 0.75
invalid = 0

print "Welcome to the vending machine\nWe accept any amount up to $5\nHow much do you have?  $"
money = gets.chomp.to_f

until money > 0 && money <= 5
  puts "Invalid amount."
  print "Plese input a different amount. $"
  money = gets.chomp.to_f
end


puts "$#{money}! Hey big spender! Here's what we've got."
puts "A) Skittles $#{a}"
puts "B) Cheetos $#{b}"
puts "C) Cookies $#{c}"
puts "D) Gum $#{d}"
puts "E) Chips $#{e}"

print "So what would you like? :"
user_input = gets.chomp.downcase

until user_input == "a" || user_input == "b" || user_input == "c" || user_input == "d" || user_input == "e"
  puts "Invalid selection."
  print "So what would you like? :"
  user_input = gets.chomp.downcase
end

if user_input == "a"
  cost = a
elsif user_input == "b"
  cost = b
elsif user_input == "c"
  cost = c
elsif user_input == "d"
  cost = d
elsif user_input == "e"
  cost = e
end

if money >= cost
  puts "Ok, here's your item and your $#{money - cost}!"
elsif money < cost
  print "Sorry, you don't have enough money for that item."
end
