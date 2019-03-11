first_hash = {}
rand_num = []
input = []
count_rand = {}
count_user = {}

# using a times loop to fill an empty array with randomly generated numbers
5.times do
  num_gen = rand 12..21
  rand_num.push(num_gen)
end

first_hash[:random_numbers] = rand_num

# pushing user input into empty array
5.times do |i|

  if i == 0
    print "Can you give me a number between 12 and 21 (inclusive):"
  else
    print "And another:"
  end
  num = gets.chomp.to_i

    while num < 12 || num >21
      print "Invalid entry. Try again:"
      num = gets.chomp.to_i
    end

  input.push(num)
end

first_hash[:user_input] = input

rand_num.each do |number|
  count_rand[number] = rand_num.count(number)
end

input.each do |number|
  count_user[number] = input.count(number)
end

3.times do
  print "Give me a number between 12 and 21 you want more information about:"
  num = gets.chomp.to_i

  while num < 12 || num >21
    print "Invalid entry. Try again:"
    num = gets.chomp.to_i
  end

  puts "Using only the first hash:"
  print "The number #{num} "

    if first_hash[:random_numbers].count(num) == 0
      print "did not show in the randomly generated numbers\n"
    else
      print "shows up #{first_hash[:random_numbers].count(num)} time(s) in the randomly generated numbers\n"
    end

  print "The number #{num} "

    if first_hash[:user_input].count(num) == 0
      print "did not show in the user given numbers\n"
    else
      print "shows up #{first_hash[:user_input].count(num)} time(s) in the user generated numbers\n"
    end

  puts "Using only the second hash:"
  print "The number #{num} "

    if  count_rand.key?(num) == true
      puts "shows up #{count_rand[num]} time(s) in the randomly given numbers.\n"
    else
      puts "does not show in randomly given numbers.\n"
    end

  print "The number #{num} "

    if  count_user.key?(num) == true
      puts "shows up #{count_user[num]} time(s) in the user given numbers.\n"
    else
      puts "does not show in user given numbers.\n"
    end

end
