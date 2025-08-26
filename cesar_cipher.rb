require 'pry-byebug'

puts 'Enter the word to process'
input_from_user = gets.chomp

while input_from_user !~ /\A[a-zA-Z!.?]+\z/
  puts 'Make sure you use words from the Latin alphabet and ! . ?'
  puts 'Enter a word to process:'
  input_from_user = gets.chomp
end

puts "Your word to process is \e[32m#{input_from_user}\e[0m"
puts "How many \e[31mshifts\e[0m should be applied?"

shift = gets.chomp

while shift !~ /\A\d+\z/
  puts 'Write a number to continue'
  shift = gets.chomp
end

shifts = shift.to_i

# using map to conert every letter
result = input_from_user.chars.map do |char|
  if char =~ /[A-Z]/ # Upcase letter
    (((char.ord - 'A'.ord + shifts) % 26) + 'A'.ord).chr
  elsif char =~ /[a-z]/ # Downcase letter
    (((char.ord - 'a'.ord + shifts) % 26) + 'a'.ord).chr
  else
    char # characters that aren't letter go there
  end
end.join

puts "Encrypted word: \e[34m#{result}\e[0m"
