# Initialize swap count to 0
# Loop throughout the length of an array
# For each element check if it is greater than the one to its right
# If it is, swap them
# Increment the swap count by one
# If swap count is greater than 0, repeat this process

def bubble_sort(unsorted_array)

  return puts "Wrong type of argument. It should be an array!" unless unsorted_array.kind_of? (Array)

  times_elts_were_swapped = 0
  number_of_iterations_through_array = 0

  unsorted_array.each do |elt|
    
    i = 0
    while i < unsorted_array.length - number_of_iterations_through_array
      spaceship_operator_result = unsorted_array[i] <=> unsorted_array[i + 1]
      unsorted_array[i], unsorted_array [i + spaceship_operator_result] = unsorted_array[i + spaceship_operator_result], unsorted_array[i] if spaceship_operator_result == 1
      times_elts_were_swapped += 1 if spaceship_operator_result == 1

      i += 1
      puts "INSIDE WHILE: i is #{i}; spaceship_operator_result is #{spaceship_operator_result} and array is #{unsorted_array}"

    end

    number_of_iterations_through_array += 1
    break if times_elts_were_swapped == 0
    puts "OUTSIDE WHILE: i is #{i}; spaceship_operator_result is #{spaceship_operator_result} and array is #{unsorted_array}"

  end
end

def bubble_sort_by(arr)
  i = 0
  times_elts_were_swapped = 0

  if block_given?

    arr.each do |el|
      while i < arr.length - (i + 1)
        comparison_result = yield(arr[i],arr[i+1])
        arr[i], arr [i + 1] = arr[i + 1], arr[i] if comparison_result > 0
        times_elts_were_swapped += 1 if comparison_result > 0
        i += 1

        puts "Inside while: i is: #{i}, time_elts_were_swapped is #{times_elts_were_swapped} and spaceship_operator_result is #{comparison_result}"
        puts "Inside while: arr is #{arr}"
      end
        puts "Outside while: i is: #{i}, time_elts_were_swapped is #{times_elts_were_swapped} and spaceship_operator_result is #{comparison_result}"
        puts "Outside while: arr is #{arr}"
      break if times_elts_were_swapped == 0
    end
  end
end

puts "====== Testing bubble_sort_by ========"
puts bubble_sort_by(["hi","hello","hey","brando"]) {|el1,el2| el1.length - el2.length}


puts "====== Testing bubble_sort ========"
puts bubble_sort([6,5,4,3,2,1])
puts "========"
puts bubble_sort([3,5,4,0,3,2,1])
puts "========"
puts bubble_sort([1,2,3,4,5,6])
puts "========"
puts bubble_sort(["m","c","f", "z","a","k"])
puts "========"
puts bubble_sort("random string")
