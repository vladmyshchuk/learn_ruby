class Book
    attr_accessor (:title)

def title=(arg)
    aux_words = ["the", "of", "by", "in", "a", "an", "and", "but"]
    words = arg.split(' ').map! { |w| !aux_words.include?(w) ? w.capitalize : w }
    words[0].capitalize!
    @title = words.join(' ')
end

end