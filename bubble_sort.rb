=begin
arr=[10,3,2,5,4]
Loop through an array of elements (arr)
First check if arr is already sorted
If it is not sorted, then 
First pass: Iterate through the length of arr
We compare arr[i] with arr[i+1], so that if arr[i]>arr[i+1], 
we switch them so we store arr[i] in a temporary variable temp=arr[i], 
and then temp=arr[i]. Then arr[i]=arr[i+1], then arr[i+1]=temp
Second pass: 
First check if arr is already sorted
Then, we iterate through length-1 of arr
And so on...
=end

def bubble_sort(arr)
  
  j=0
  while j<arr.length-1
    puts "J is #{j}"
    puts "arr.length is #{arr.length}"
    i=0
    while i < arr.length-1
      puts "i is #{i}"
      puts "arr.length is #{arr.length}"
      if arr[i]>arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
      end
      i+=1
      print arr
    end
    j+=1
  end


  return arr

  
end

test_arr = [26,6,4,3,1]
puts bubble_sort(test_arr)
puts test_arr













