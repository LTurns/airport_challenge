require_relative 'plane'
require_relative 'atc'

class Airport
  include ATC
   attr_accessor :airport, :population, :capacity

  def initialize(population, capacity)
    @population = population
    @capacity = capacity
    puts "To collate the data, please type in data.airport_full?"
  end

  def airport_full?
    if @population.to_i > @capacity.to_i
      puts "Airport is over it's capacity."
      cancel_landing
    elsif @population.to_i == @capacity.to_i
      puts "Airport has reached it's capacity"
      cancel_landing
    else
      x = @capacity - @population
      "Airport has an excess capacity of #{x} planes. This means that, pending good weather reports, this plane is free to land. Type 'data.confirm_weather_descent' for the forecast."
    end
  end
end
