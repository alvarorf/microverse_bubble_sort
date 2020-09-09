# rubocop:disable Style/FrozenStringLiteralComment
# Initialize swap count to 0
# Loop throughout the length of an array
# For each element check if it is greater than the one to its right
# If it is, swap them
# Increment the swap count by one
# If swap count is greater than 0, repeat this process

def bubble_sort(uns_array)
  return 'Wrong type of argument. It should be an array!' unless uns_array.is_a? Array

  times_elts_were_swapped = 0
  number_of_iterations_through_array = 0
  uns_array.each do
    i = 0
    while i < uns_array.length - (number_of_iterations_through_array + 1)
      spaceship_operator_result = uns_array[i] > uns_array[i + 1]
      if spaceship_operator_result
        uns_array[i], uns_array [i + 1] = uns_array[i + 1], uns_array[i]
        times_elts_were_swapped += 1
      end
      i += 1
    end
    number_of_iterations_through_array += 1
    return uns_array if times_elts_were_swapped.zero?
  end
end

def bubble_sort_by(arr)
  i = 0
  times_elts_were_swapped = 0

  arr.each do |_el|
    while i < arr.length - (i + 1)
      comparison_result = yield(arr[i], arr[i + 1])
      arr[i], arr [i + 1] = arr[i + 1], arr[i] if comparison_result.positive?
      times_elts_were_swapped += 1 if comparison_result.positive?
      i += 1
    end
    return arr if times_elts_were_swapped.zero?
  end
end

# rubocop:enable Style/FrozenStringLiteralComment
