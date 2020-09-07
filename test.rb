

def bubble_sort(argument)
  len=argument.length
  i=0
  while i<len
    if argument[i]>argument[i+1]
      a=argument[i]
      argument[i]=argument[i+1]
      argument[i+1]=a
      i+=1
    end
    
  end
  return argument
end

puts bubble_sort([6,2,5])