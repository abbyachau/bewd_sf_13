require 'pry'
require 'pry-byebug'

class Person
  #getter & setter properties

  attr_accessor :name, :age, :home_town

  def initialize(name, age, home_town)
    @name = name
    @age = age
    @home_town = home_town
  end

  def coding_skills
    if home_town == "San Francisco"
      "I have coding skills"
    else
      "I have been short-changed"
    end
  end

  def self.assess_skills(people)
    people.each do |person|
      binding.pry
      puts person.coding_skills
    end
  end

  def to_s #instance method
    "Hey I am a person my name is #{@name}. I am from #{home_town}"
  end

end

person = Person.new("Debs", 98, "LA") #instantiation
person1 = Person.new("Sade", 44, "New York")
person2 = Person.new("Lorde", 22, "London")
person3 = Person.new("Jane", 97, "San Francisco")
puts person.coding_skills
people = [person, person1, person2]

Person.assess_skills(people)
