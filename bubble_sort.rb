def bubble_sort(array)
swapped = true
    while swapped == true do
        swapped = false   
        array.each_with_index do |element, index|
           next_element = array[index+1]
           break if next_element == nil
            if element>next_element
                element,next_element = next_element,element
                array[index] = element
                array[index+1] = next_element
                swapped = true
            end
        end
    end
    p array
end

array_to_sort = [1,3,5,2,0,10,-1]
bubble_sort(array_to_sort)
