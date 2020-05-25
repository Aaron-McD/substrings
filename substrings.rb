dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "below"

def substrings(string, dict)
    return dict.reduce({}) do |word_hash, word|
        temp_string = string.dup.downcase
        while(temp_string.include?(word))
            word_hash[word] = word_hash.fetch(word, 0) + 1
            temp_string = temp_string.sub(word, "")
        end
        word_hash
    end
end

puts substrings(word, dictionary)