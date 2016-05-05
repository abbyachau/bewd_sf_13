def get_name_and_city
  puts "Hey, what's your name?\n"
  name = gets.strip
  puts "Cool, what city are you in? \n"
  city = gets.strip
  greeting(name,city)
end


def greeting(name,city)
  "Hey #{name}! Welcome to #{city!}"
end

get_name_and_city
