# Initialize swap count to 0
# Loop throughout the length of an array
# For each element check if it is greater than the one to its right
# If it is, swap them
# Increment the swap count by one
# If swap count is greater than 0, repeat this process

def bubble_sort(unsorted_array)

  return puts "Wrong type of argument. It should be an array!" unless unsorted_array.kind_of? (Array)

  times_elts_were_swapped = 0

  unsorted_array.each do |elt|

    for i in 0...unsorted_array.length do

      spaceship_operator_result = unsorted_array[i] <=> unsorted_array[i + 1]
      unsorted_array[i], unsorted_array [i + spaceship_operator_result] = unsorted_array[i + spaceship_operator_result], unsorted_array[i] if spaceship_operator_result == 1
      times_elts_were_swapped +=1 if spaceship_operator_result == 1

    end

    break if times_elts_were_swapped == 0

  end
end

puts bubble_sort([6,5,4,3,2,1])
puts "========"
puts bubble_sort([3,5,4,0,3,2,1])
puts "========"
puts bubble_sort([1,2,3,4,5,6])
puts "========"
puts bubble_sort(["m","c","f", "z","a","k"])
puts "========"
puts bubble_sort("random string")

# puts "========"
# [1,2,3,4,5,6].each do |left, right|
#   puts "this is left #{left}"
#   puts "this is right #{right}"
# end

