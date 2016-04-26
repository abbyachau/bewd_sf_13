require 'pry'
require 'pry-byebug'

def awesome(number)
  if number % 5 == 0 && number % 3 == 0
    puts "awesome"
  elsif number % 3 == 0
    puts "awe"
  elsif number % 5 == 0
    puts "some"
  else
    puts "This is #{number}. It is not completely awesome."
  end
end

awesome(3)

def awesome_seeker(high_number)
  1.upto(high_number) do |number|
    awesome(number)
  end
end

awesome_seeker(1000)

# do and end are a block. |number| assign it to a local name/defines a local variable


# def awesome_seeker(high_number)
#   1.upto(high_number) do |number|
#     if number % 5 == 0 && number % 3 == 0
#       puts "awesome"
#     elsif number % 3 == 0
#       puts "awe"
#     elsif number % 5 == 0
#       puts "some"
#     else
#       puts "This is #{number}. It is not completely awesome."
#     end
# end
#
# awesome_seeker(7)

#
# awe(5)
#
# def some(number)
#   if number % 5 == 0
#     puts "some"
#   else
#     puts "no"
#   end
# end
#
#
# some(40)
#
#
# def awesome(number)
#   if number % 5 == 0 && number % 3 == 0
#     puts "awesome"
#   else
#     puts "no"
#   end
# end
#
# awesome(70)
# awesome(15)
# awesome(7)
