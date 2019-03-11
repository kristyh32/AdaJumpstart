puts "Welcome to Election Day!\nVoting is an important civic duty!"
puts "Your candidate choices are: John, Paul, Ringo, and George."
puts "But if you don't see a candidate you like, feel free to write one in!"
puts "Please cast your vote then step aside so the next person gets their turn."
puts "Voting officals: Please enter <end voting> when polls have closed."

candidates = ["john", "paul", "ringo", "george"]
voting = []
counts = []

vote = ""

until vote == "end voting"
  print "Enter your vote here: "
  vote = gets.chomp.downcase
  voting.push(vote)

    exists = false

    candidates.each do |candidate|
      if vote == candidate || vote == "end voting" || vote == ""
        exists = true
      end
    end

      if exists == false
        candidates.push(vote)
      end

end

puts "The polls are now closed.\nAnd the results are in!"


candidates.each do |name|
  print "#{name.capitalize}, coming in with #{voting.count(name)}"
    if voting.count(name) == 1
      puts " vote.\n"
    else
      puts " votes.\n"
    end
  counts << voting.count(name)
end

biggest_vote = counts.max

if counts.count(biggest_vote) > 1
  puts "Well folks, we have a tie. Polls will reopen tomorrow for a re-vote!"
else
  winner = candidates[counts.index(biggest_vote)]
  puts "The winner is, #{winner.capitalize} coming in at #{biggest_vote} votes!"
end
