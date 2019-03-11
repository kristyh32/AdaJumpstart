print "Welcome to the vending machine\nWe accept any amount up to $5\nHow much do you have?  $"
money = gets.chomp.to_f

puts "$#{money}! Hey big spender! Here's what we've got."

a = 0.65
b = 0.85
c = 1.00
d = 0.50
e = 0.75

puts "A) Skittles $#{a}"
puts "B) Cheetos $#{b}"
puts "C) Cookies $#{c}"
puts "D) Gum $#{d}"
puts "E) Chips $#{e}"

print "So what would you like? :"
user_input = gets.chomp.downcase

if user_input == "a" && money >= a
  puts "Ok, here's your candy and your $#{money - a}!"
elsif user_input == "a" && money < a
  puts "Nice try."
end

if user_input == "b" && money >= b
  puts "Ok, here's your candy and your $#{money - b}!"
elsif user_input == "b" && money < b
  puts "Nice try."
end

if user_input == "c" && money >= c
  puts "Ok, here's your candy and your $#{money - c}!"
elsif user_input == "c" && money < c
  puts "Nice try."
end

if user_input == "d" && money >= d
  puts "Ok, here's your candy and your $#{money - d}!"
elsif user_input == "d" && money < d
  puts "Nice try."
end

if user_input == "e" && money >= e
  puts "Ok, here's your candy and your $#{money - e}!"
elsif user_input == "e" && money < e
  puts "Nice try."
end
