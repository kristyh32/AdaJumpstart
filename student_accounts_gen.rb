student_names = []
student_id = []
student_email = []

puts "Let's get five student names!\nPlease enter the students' first and last names below:"

5.times do
name = gets.chomp.upcase
student_names.push(name)
end

# generates five random numbers and checks array to avoid duplicates
5.times do
  id_no = rand 111111..999999
    while student_id.count(id_no) > 0
      id_no = rand 111111..999999
    end
  student_id.push(id_no)
end

# splits student's names by spaces to isolate first and last name
# checks for two first names and pulls two first initials in case of two
5.times do |i|
  name = student_names[i]
  first_last = name.split(" ")

    if first_last.length > 2
      first_in = first_last[0].chr + first_last[1].chr
    else
      first_in = first_last[0].chr
    end
  last_name = first_last[first_last.length - 1]

  nums = student_id[i].to_s.split("")
  last_three = nums[3] + nums[4] + nums[5]

  email = first_in + last_name + last_three + "@adadevelopersacademy.org"
student_email.push(email)
end

puts student_email
