#write your code here

def translate(string)
  words = string.split(' ')
  words.map! do |x|
      if /\A[[:punct:]]/.match(x) #if word begins with punctuation, preserve it
          while (x[1] =~ /[aeiouy]/) != 0
              if /\Aqu/.match(x[1])
                  x = x[0] + x[3..-1] + x[1..2]
              else
                  x = x[0] + x[2..-1] + x[1]
              end
          end
      elsif /[[:punct:]]/.match(x[-1]) #if word ends with punctuation, preserve it
          while (x =~ /\A[aeiouy]/) != 0
              if /\Aqu/.match(x[1])
                  x = x[2..(x =~ /[[:punct:]]/)-1] + x[1..2] + x[(x =~ /[[:punct:]]/)..-1]
              else
                  x = x[1..(x =~ /[[:punct:]]/)-1] + x[0] + x[(x =~ /[[:punct:]]/)..-1]
              end
          end
      else                
          while (x =~ /\A[aeiouy]/) != 0 #reorder first letters until vowel is first 
              if /\Aqu/.match(x)
                  x = x[2..-1] + x[0..1]
              else
                  x = x[1..-1] + x[0]
              end
          end
      end
      if /[[:upper:]]/.match(x) #capitalise first letter
          if /\A[[:punct:]]/.match(x)
              x = x[0] + x[1..-1].capitalize
          else
              x = x.capitalize
          end
      end
      if /[[:punct:]]/.match(x[-1]) #add 'ay' while preserving punctuation
          x = x[0..(x =~ /[[:punct:]]/)-1] + 'ay' + x[(x =~ /[[:punct:]]/)..-1]
      else
          x = x + 'ay'
      end
  end    
  words.join(' ')
end