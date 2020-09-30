def sort_array_asc(arr)
    arr.sort
end

def sort_array_desc(arr)
    arr.sort{|a,b| b <=> a}
end

def sort_array_char_count(arr)
    arr.sort{|a,b| a.length<=>b.length}
end

def swap_elements(arr)
    temp = arr[1]
    arr[1] = arr[2]
    arr[2] = temp
    arr
end

def reverse_array(arr)
    reversed = []
    i = arr.length
    while i > 0
        reversed << arr[i-1]
        i -= 1
    end
    reversed
end

def kesha_maker(arr)
    solution = []
    arr.each{|element| solution << (element.slice(0..1) + "$" + element.slice(3,element.length-1))}
    solution
end

def find_a(arr)
    solution = []
    arr.each{|element| element[0] == "a"? solution << element : nil}
    solution
end

def sum_array(arr)
    arr.inject{|memo, n| memo + n}
end

def add_s(arr)
    # i = 0
    # while i < arr.length
    #     if i != 1
    #         arr[i] << "s"
    #     end
    #     i += 1
    # end
    # arr

    arr.each_with_index.map{|element, idx| idx != 1? element << "s" : element}
end
