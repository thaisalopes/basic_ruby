def substrings(string, dictionary)
    string_low_case = string.downcase
    p compare_and_count(string_low_case, dictionary)
end

def compare_and_count(string, dictionary)
    compared_array =[]
    dictionary.each do |word| 
        compared_array.push(string.scan(word))
        compared_array = compared_array.flatten
    end
    compared_array.reduce (Hash.new(0)) do |result, count|
        result[count] +=1
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Below below low the mountain down the hill going got it"
substrings(string, dictionary)