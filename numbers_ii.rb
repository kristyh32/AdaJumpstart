puts "This program will tell you if a number that you input is less than 20."
puts "It doesn't sound that useful because it's not! Let's get started!"
print "Enter your first positive number here: "
a = gets.chomp.to_i
  if a >= 20
    puts "#{a} is greater than or equal to 20!"
  else
    puts "#{a} is less than 20"
  end

print "And the next number: "
b = gets.chomp.to_i
  if b >= 20
    puts "#{b} is greater than or equal to 20!"
  else
    puts "#{b} is less than 20"
  end

print "And the last number: "
c = gets.chomp.to_i
  if c >= 20
    puts "#{c} is greater than or equal to 20!"
  else
    puts "#{c} is less than 20"
  end
