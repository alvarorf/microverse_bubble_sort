# rubocop:disable Style/FrozenStringLiteralComment
require_relative 'bubble_sort.rb'

puts '====== Testing bubble_sort_by ========'
puts bubble_sort_by(%w[hi hello hey brando]) { |el1, el2| el1.length - el2.length }

puts '====== Testing bubble_sort ========'
puts bubble_sort([6, 5, 4, 3, 2, 1])
puts '========'
puts bubble_sort([3, 5, 4, 0, 3, 2, 1])
puts '========'
puts bubble_sort([1, 2, 3, 4, 5, 6])
puts '========'
puts bubble_sort(%w[m c f z a k])
puts '========'
puts bubble_sort('random string')
# rubocop:enable Style/FrozenStringLiteralComment
