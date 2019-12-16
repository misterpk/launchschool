# problem
# input - n - number of lights
# output - lights on after n rounds
# each round, mutliples of n are toggled
#
# tests
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
#
# data structures
# array of booleans
#
# algorithm
# create hash of length n, all values false
# first round, toggle all values (all on)
# after, toggle values if index is multiple of round number
require 'byebug'

def initialize_hash(number)
  lights = {}
  1.upto(number) do |i|
    lights[i] = false
  end
  lights
end

def toggle_switch(number, hash)
  1.upto(number) do |round|
    hash.each do |key, value|
      hash[key] = !value if key % round == 0
    end
  end
  hash
end

def select_switches_on(hash)
  hash.select { |_position, state| state }.keys
end

def output_switch_state(hash)
  switches_off = []
  switches_on = []
  hash.each do |key, value|
    value ? switches_on << key : switches_off << key
  end

  "lights " + switches_off[0..-2].join(', ') + " and #{switches_off[-1]} are now off; " +
    switches_on[0..-2].join(', ') + " and #{switches_on[-1]} are on"
end

def toggle_lights(number)
  lights = initialize_hash(number)

  lights = toggle_switch(number, lights)

  #select_switches_on(lights)
  output_switch_state(lights)
end

p toggle_lights(5)
p toggle_lights(10)


