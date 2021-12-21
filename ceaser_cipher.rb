def ceaser_cipher (string, shift_factor)
    new_result = string_to_array(string, shift_factor)
    array_to_string(new_result)
end

def string_to_array (string, shift_factor)
    result = string.codepoints
    array_result = []
    new_shift_factor = shift_factor%26
    result.each do |number|
        case number
        when 65..91 
            if  (number+shift_factor) > 91
                shift_number = number+shift_factor-91
                new_result = 65+shift_number 
            else
                new_result = number+new_shift_factor
            end                  
        when 97..123
            if (number+shift_factor) > 122
                shift_number = number+new_shift_factor-122
                new_result = 96+shift_number 
            else
                new_result = number+shift_factor
            end   
        when 0..64
            new_result = number
        when 91..96
            new_result = number
        when 123..127
            new_result = number
        else 
            new_result = number+shift_factor            
        end
        array_result.push(new_result)
    end
    array_result
end

def array_to_string(array)
    new_string = array.map { |number| number.chr }
    final_string = new_string.join
    final_string
end
p ceaser_cipher("Nichollas .!",1)