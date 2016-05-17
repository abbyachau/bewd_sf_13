require 'pry'
require 'pry-byebug'

class Thermostat

  #creates getter && setter methods for each attribute
  attr_accessor :current_temp
  attr_reader :target

#instance_factory to support creating a new thermostat using Thermostat.new
  def initialize(current_temp, target)
    @current_temp = current_temp
    @target = target
  end

 #self.target , @target and target are all the same inside of this instance method
  def calibrate_temp
    if current_temp > target #use a conditional to calibrate the temperature
      puts "you are too hot"
    elsif current_temp < target
      puts "you are too cold"
    else"just right"
    end
  end

  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temp|
        reading = Thermostat.new(temp, target_temp)#loop through all temps, detect the temperature, then calibrate it
        reading.calibrate_temp
      end
  end
end

#The temperature is being read externally somewhere, so let's just create an array of those readings
#and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]
#set by user
target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)

#Pull in all temperature
#check that you have all temps and the target temps
# you know you need to call all_temp.each do |temp|
# get the first reading and create an instance of thermostat for each thing in the array. create a reading for each temperature in the array. using thermatstat.new (i.e. themstate class)
# call state at reading.calibrate_temp - create instance method that compares temperature - using conditional
# call another method that measures temp up or down
