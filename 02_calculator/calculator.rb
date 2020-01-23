# frozen_string_literal: true

# write your code here

def add(x, y)
  (x + y)
end

def subtract(x, y)
  (x - y)
end

def sum(array)
  array.reduce(0, :+)
  end

def multiply(*numbers)
  numbers.reduce(:*)
  end

def power(number, pwr)
  (number**pwr)
end

def factorial(n)
  return nil if n < 0

  value = 1
  while n > 0
    value *= n
    n -= 1
  end
  value
   end
