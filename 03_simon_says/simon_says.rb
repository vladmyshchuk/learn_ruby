# frozen_string_literal: true

# write your code here

def echo(s)
  s
end

def shout(x)
  x.upcase
end

def repeat(x, y = 2)
  ([x] * y).join(' ')
end

def start_of_word(x, n)
  x[0...n]
end

def first_word(x)
  x.split(" ").first
end

def titleize(x)
  words = x.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end