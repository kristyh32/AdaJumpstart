puts "Welcome to Kristy's walkathon program*! *not valid for marathons"

walkathon = {}
laps = []
money = []

print "What is your earning goal for this event? :"
walkathon[:goal] = gets.chomp.to_f
puts "Awesome! Good luck!\n"
print "How much will each person earn per lap? :"
walkathon[:per_lap] = gets.chomp.to_f
puts "Hurray you finished! How many laps did each of the five team members complete?: "

5.times do
  laps.push(gets.chomp.to_i)
end
walkathon[:laps] = laps

walkathon[:laps].each_with_index do |laps, i|
  earned = laps * walkathon[:per_lap]
  puts "Walker number #{i + 1} did #{laps} laps:\n earning a total of $" + sprintf('%.2f', earned) + "!"
  money.push(earned)
end

if money.count(money.max) > 1
  winners = ""
  money.each_with_index do |earned, i|
    if earned == money.max
      winners += "\nWalker Number #{i + 1}"
    end
  end
  puts "We have a tie! Your winners are:" + winners
else
  puts "Walker number #{money.index(money.max) + 1} earned the most money!"
end

total = money.inject(0) { |sum, x| sum + x }

puts "The total amount earned is $" + sprintf('%.2f', total) + "."

  if total > walkathon[:goal]
    puts "You beat your goal by $" + sprintf('%.2f', total - walkathon[:goal]) + "!"
  elsif total == walkathon[:goal]
    puts "You met the goal!"
  else
    puts "You missed your goal by $" + sprintf('%.2f', walkathon[:goal] - total) + ". :-("
  end
