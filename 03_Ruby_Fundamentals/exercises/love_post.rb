# puts "Who is your love interest"
# name = gets
#
# puts "Hey, " + name + "smells like a deep fried onion"
#
# INSTRUCTOR'S ANSWER - captures name of love interest
# def get_love_interest
#   puts "Who do you love" \n"
#   love_interest = gets.strip
#   get_response(love_interest)
# end
#
# Captures a response from love interest
#
# def get_response(love_interest)
#   puts "Are you thinking of #{love_interest}?\n"
#   puts "Answer 'Yes' or 'No'\n"
#   answer = gets.strip.downcase
#   binding.pry
# end
#
# def get_valid_answer(answer, love_interest)
#   case answer
#     when "yes"
#       puts "Maybe you should call #{love_interest}?\n"
#     when "no"
#       puts "Ok, maybe call them soon. You love #love_interest}!"
#     else
#       puts "your answer is not valid \n"
#       puts "please put 'yes' or 'no' \n"
#       get_response(love_interest)
#     end
# end
#
#
#
# case is what you are evaluating
#
# INSTRUCTOR'S ANSWER

#THIS IS MY CODE

def get_love_interest
  puts "Who do you love\n"
  love_interest = gets.strip
  get_response(love_interest)
end

def get_response(love_interest)
  puts "Are you thinking of #{love_interest}?\n"
  puts "Answer 'Yes' or 'No'\n"
  answer = gets.strip
  switch_statement(answer, love_interest)
end

def switch_statement(answer, love_interest)
  case answer
when "Yes"
  puts "What does #{love_interest}?\n smell like to you?"
when "roses"
  puts "sounds great"
when "like duck soup"
  puts "that doesn't sound too bad"
when "like goose fat"
  puts "fried like a potato"
else
  puts "what smells like deep fried onion to you might smell like roses to me"
  get_response(love_interest)
end
end

puts get_love_interest
