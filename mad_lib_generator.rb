# This section introduces the user to the game
puts "Hello! Welcome to the okayest mad lib program ever."
puts "Ready to get started?"
puts "Too bad, we're doing it anyway!"

#takes user input and stores as variables
puts "Let's start with your name. What is it?"
name = gets.chomp.capitalize
puts "Hey #{name}, great to meet you!"
print "Can you give me a verb ending in -ing: "
verb = gets.chomp.downcase
print "And a fruit: "
fruit = gets.chomp.downcase
print "An adjective: "
adjective = gets.chomp.downcase
print "Your least favorite junk food: "
junk_food = gets.chomp.downcase
print "A plural noun: "
plural_noun = gets.chomp.downcase
print "A musical instrument: "
instrument = gets.chomp.capitalize
print "A place: "
place = gets.chomp.downcase
print "A number greater than 1: "
# this takes the user's number and changes it from a string to an integer
number = gets.chomp.to_i
print "And lastly, a body part: "
body_part = gets.chomp.capitalize

puts "Ok, looks like we're ready to go!"
puts "Here's you mad lib."

puts "The letter from school:\nDear #{name}'s parent or guardian"
puts "We regret to inform you that your child was caught #{verb} with a\n#{fruit} at school today."
puts "This is in #{adjective} violation of our '#{junk_food} only' policy."
puts "To add insult to injury, #{name} also waved #{plural_noun} in Ms. #{instrument}'s face when\nasked to turn over the #{fruit}!"
puts "Because this has now happened #{number} times, #{name} will be placed in\nin-#{place} suspension for #{number * 2} days."
puts "If you have any questions, please don't call."
puts "Sincerely\nPrincipal #{body_part}"
