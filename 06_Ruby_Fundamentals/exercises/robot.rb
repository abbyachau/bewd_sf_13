#Classes have state and behavior
#State & Object Factory: factory that creates and instiantes robots
#Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc.,

require 'pry'
require 'pry-byebug'

class Robot

  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :origin

 #instance_factory to support creating a new robot using Robot.new
  def initialize(name,type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  #class methods can be called outside of the class like Robot.make_robots(number)
  def self.make_robots(number)
    robots.each do | robot |
      Robot.random_robot_maker
  end

  def self.random_robot_maker
    names = ["Doop", "Salazar", "Pepper", "Salt", "London"]
    types = ["Supra", "Thunder"]
    bot = Robot.new(name,type,origin)
    return bot
  end

  #instance methods can only be called by instances of a class
  def empathy
    add_kindness_and_humor
  end

  def laser
    add_laser_fighting_skills
  end

  def fly
    add_flying_skills
  end

  #this is an instance method
  def flying_skills
  end

  def laser_fighting_skills
    puts "Don't make me use my laser on you."
  end

  def add_kindness_and_humor
    puts "I am a good bot."
  end
end
