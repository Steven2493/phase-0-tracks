def search_array(arr, integer)
  result = NIL
  index = 0 
  arr.each do |number| 
  if number == integer
  result = index
  end
  index += 1 
  end 
  result 
end
arr = [42, 89, 23, 1]
p search_array(arr, 1)
#=> 3
p search_array(arr, 24)
#=> nil


def fib(integer)
  arr = [0, 1]
  loop = integer - arr.length 
  while loop > 0 
  arr << arr[arr.length-1] + arr[arr.length-2]
  loop -= 1 
end 
  arr 
end


fib(100)

def arr_sort(arr)
  index = 1 
  swap = 0 
  loop = arr.length 
  while loop > 1 
  if arr[index-1] > arr[index]
  swap = arr[index]
  arr[index] = arr[index-1]
  arr[index-1] = swap
  end
  index += 1 
  loop -= 1
  end
  arr
end
arr = [5, 1, 4, 2, 8] #Check this array
arr_sort(arr)
p arr_sort(arr)
