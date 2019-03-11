student_data = []
student_id = []

puts "Let's get five student names!\nPlease enter the students' first and last names below:"



5.times do
# generates new hash to negate previous times loops
  student_hash = {}
  name = gets.chomp.upcase

# generates random numbers stored in array to check for duplicates
  id_no = rand 111111..999999
    while student_id.count(id_no) > 0
      id_no = rand 111111..999999
    end
  student_id.push(id_no)

# splits student's names by spaces to isolate first and last name
# checks for two first names and pulls two first initials in case of two
  first_last = name.split(" ")

    if first_last.length > 2
      first_in = first_last[0].chr + first_last[1].chr
    else
      first_in = first_last[0].chr
    end
  last_name = first_last[first_last.length - 1]

  nums = id_no.to_s.split("")
  last_three = nums[3] + nums[4] + nums[5]
  email = first_in + last_name + last_three + "@adadevelopersacademy.org"

# takes generated variables and stores in hash to relevant keys
# pushes hash into student_data array
  student_hash[:name] = name
  student_hash[:id] = id_no
  student_hash[:email] = email
  student_data.push(student_hash)
end

puts "Student Roster:"

student_data.each do |student|
  puts "#{student[:name]}"
end

puts student_data
