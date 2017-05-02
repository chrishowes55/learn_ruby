#write your code here
def add(num_one, num_two)
  num_one + num_two
end

def subtract(num_one, num_two)
  num_one - num_two
end

def sum(array)
  sum = 0
  i = 0
  while i < array.length
    sum += array[i]
    i += 1
  end
  sum
end
