print "Welcome to the vending machine\nHow much do you have?  $"
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
else
  puts "Nice try, get lost."
end

if user_input == "b" && money >= b
  puts "Ok, here's your candy and your $#{money - b}!"
else
  puts "Nice try, get lost."
end

if user_input == "c" && money >= c
  puts "Ok, here's your candy and your $#{money - c}!"
else
  puts "Nice try, get lost."
end

if user_input == "d" && money >= d
  puts "Ok, here's your candy and your $#{money - d}!"
else
  puts "Nice try, get lost."
end

if user_input == "e" && money >= e
  puts "Ok, here's your candy and your $#{money - e}!"
else
  puts "Nice try, get lost."
end
