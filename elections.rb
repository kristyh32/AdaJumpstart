puts "Welcome to Election Day!\n Voting is an important civic duty!"
puts "Your candidate choices are: John, Paul, and Ringo"
puts "Please cast your vote then step aside so the next person gets their turn."

john = 0
paul = 0
ringo = 0

10.times do
  print "Enter your vote here: "
  vote = gets.chomp.downcase

    if vote == "john"
      john += 1
    elsif vote == "paul"
      paul += 1
    elsif vote == "ringo"
      ringo += 1
    end

end

puts "And the results are in!"
puts "John - #{john} vote(s)"
puts "Paul - #{paul} vote(s)"
puts "Ringo - #{ringo} vote(s)"

if john > ringo && john > paul
  print "John is the winner!"
elsif ringo > john && ringo > paul
  print "Ringo is the winner!"
elsif paul > john && paul > ringo
  print "Paul is the winner!"
elsif john > ringo && paul > ringo && john == paul
  print "John and Paul are tied!"
elsif ringo > john && paul > john && ringo == paul
  print "Ringo and Paul are tied!"
elsif john > paul && ringo > paul && john == ringo
  print "John and Ringo are tied!"
end
