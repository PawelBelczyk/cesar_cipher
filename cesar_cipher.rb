# it is cesar cipher,
# project in ruby

puts 'Enter the word to process'
input_from_user = gets.chomp
if input_from_user.match?(/\A[a-zA-Z]+\z/)
  puts "your word to process is \e[32m#{input_from_user} \e[0m
  How many  \e[31m shifts \e[0m your word have to made ?"
else
  puts 'make sure you use words from latin alphabet!'
end

shifts = gets.chomp
if shifts.match?(/\A\d+\z/)
  shifts.to_i
else
  puts 'You must input the Integrer'
end
