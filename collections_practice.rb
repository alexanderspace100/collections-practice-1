require 'pry'
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
  a.length <=> b.length
  end
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

# Advanced:
def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array)
  array.reverse
end

# or
# def reverse_array(array)
#  reversed = []
#  array.each { |item| reversed.unshift(item) }
#  reversed
# end

def kesha_maker(array)
  new_array = []
  array.each do |item|
    item[2] = "$"
    new_array << item
  end
end

def find_a(array)
  array.select do |item|
    item.start_with?("a")
  end
end

def sum_array(array)
  array.inject {|sum, n| sum + n}
end

def add_s(array)
  array.collect do |word|
    if array[1] == word
      word
    else
      word + "s"
    end
  end
end
