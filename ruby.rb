dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dictionary)
    counts = {}
    array = string.downcase.split(" ")
    dictionary.each {|count_key| counts[count_key] = 0 }
    array.each {|word| dictionary.each {|dic_word| counts[dic_word] += 1 if word.include? dic_word }}
    puts counts.select {|key, value| value > 0}
end

substring("Howdy partner, sit down! How's it going?", dictionary)