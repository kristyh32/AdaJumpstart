puts "Let's play a numbers game! How many numbers would you like to enter? :"
count = gets.chomp.to_i

user_input = []
total = 0

until count == 0
  print "Enter a positive integer here: "
  integer = gets.chomp.to_i
  user_input.push(integer)
  count -= 1
end

puts "Ok now let's compare those values!"
puts "Comparing each value to the last value, we see:"

user_input.each do |i|
  print "The value #{i},"

    if i > user_input.last
      puts "is greater than #{user_input.last}"
    elsif i < user_input.last
      puts "is less than #{user_input.last}"
    elsif i == user_input.last
      puts "is equal to #{user_input.last}"
    end

    total += i

end

puts "The smallest number that you entered was #{user_input.min}"
puts "The largest number that you entered was #{user_input.max}"
puts "The average of all the numbers you entered is #{total/user_input.length}"
