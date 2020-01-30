
# Question 1: #sort_array_asc
# Build a method sort_array_asc that takes in an array of integers and returns a copy of the array with the integers in ascending order.

def sort_array_asc(arr)
    arr.sort{ |a,b|
        a <=> b
    }
end


# Question 2: #sort_array_desc
# Build a method sort_array_desc that takes in an array of integers and returns a copy of the array with the integers in descending order. Remember that .sort takes a block in which you can specify how you want your array sorted.

def sort_array_desc(arr)
    arr.sort{ |a,b|
        b <=> a
    }
end

# Question 3: #sort_array_char_count
# Build a method sort_array_char_count that takes in an array of strings and returns a copy of the array with the strings ordered in ascending order by length. Remember that .sort takes a block in which you can specify how you want your array sorted.

def sort_array_char_count(arr)
    arr.sort{ |a,b|
        a.length <=> b.length
    }
end

# Question 4: #swap_elements
# Build a method swap_elements that takes in an array and swaps the second and third elements. Remember that array indices start at 0, so the second element has an index of 1 and the third element has an index of 2.

def swap_elements(arr)
    n = arr[2]
    arr.delete_at(2)
    arr.insert(1,n)
    
end

# Advanced: Try building a method swap_elements_from_to that takes in three arguments, array, index, destination_index, that will allow you to specify the index of the element you would like to move to a new index. So:

# Advanced #2: Try writing test coverage for it!

# Question 5: #reverse_array
# Build a method reverse_array that takes in an array of integers and returns a copy of the array with the elements in reverse order.

def reverse_array(arr)
    arr.reverse()
end


# Question 6: #kesha_maker
# Build a method called kesha_maker that takes in an array of strings and replaces the third character in each string with a $ ("dollar sign")—Ke$ha style. Use the .each method to iterate and build a new array to return at the end of your method, just like we did in the "My Each" lab.

def kesha_maker(arr)
    new_arr = []
    arr.each{ |item|
        item[2] = "$"
        new_arr << item
    }
    new_arr
end

# puts kesha_maker(["blake", "ashley", "scott"])

# Question 7: #find_a
# Build a method find_a that returns all the strings in the array passed to it that start_with? (hint) the letter "a". You'll want to use a high level iterator for this that finds, selects, or detects elements based on a condition.

def find_a(arr)
    arr.find_all { |str|
        str.start_with?("a")
    }
end

puts find_a(["apple", "orange", "pear", "avis", "arlo", "ascot" ])

# Question 8: #sum_array
# Build a method sum_array that adds together all of the integers in the array and returns their sum.

# Advanced: Try using the .inject method here.
def sum_array(arr)
    arr.inject(0) { |sum, item|
        sum += item
    }
end
# Question 9: #add_s
# Build a method that adds an "s" to each word in the array except for the second element in the array ("feet" is already plural).

# Advanced: Iterators in Ruby are chainable, see if you can use .each_with_index in addition to .collect to solve this one in an elegant way. What happens if you write:

# [1,2].each_with_index.collect{|element, index| }

def add_s(arr)
    arr2 = []
    arr.each_with_index{ |el, ind|
        if ind != 1
            el = el + "s"
        end
        arr2 << el
    }
    arr2
end