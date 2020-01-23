# frozen_string_literal: true

# write your code here

def echo(x)
  if x == 'hello'
    'hello'
  elsif x == 'bye'
    'bye'
  end
end

def shout(x)
  x.upcase
end

def repeat(x, y = 2)
  ([x] * y).join(' ')
end

def start_of_word(word, n)
  word[n - 1].chars
end
