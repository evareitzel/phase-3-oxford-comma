def oxford_comma(arr)
  if arr.length == 1
    return arr[0]
  elsif arr.length == 2
    return arr.join(' and ')
  elsif arr.length >= 3
    new_arr = []
    new_arr = arr.join(', *').split('*')
    last_item = new_arr.pop
    new_arr << "and #{last_item}"
    return new_arr.join()
  end
end
  

# require 'pry'
  # oxford_comma ["fiddleheads", "okra", "kohlrabi"]

    # elsif arr.length == 3
  #   return "#{arr[0]}, #{arr[1]}, and #{arr[2]}"



  def oxford_comma_flatiron_solution(array)
    return array.join(" and ") if array.size < 3

    # insert 'and ' in front of the last string in the array
    array[-1] = "and #{array[-1]}"

    array.join(", ")
  end