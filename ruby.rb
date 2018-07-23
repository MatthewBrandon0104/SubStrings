dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
    counts = {}
    array = string.downcase.split(" ")
    
    dictionary.each do |count_key|
       counts[count_key] = 0
    end
    
    array.each do |word|
        dictionary.each do |dic_word|
            if word.include? dic_word
                counts[dic_word] += 1
            end
        end
    end
    puts counts.select {|key, value| value > 0}
end

substring("Howdy partner, sit down! How's it going?", dictionary)



# "Howdy partner, sit down! How's it going?"