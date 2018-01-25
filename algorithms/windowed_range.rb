def windowed_max_range(array, int)
  current_max_range = nil
  start_pos = 0
  end_pos = int - 1
  while end_pos < array.length
    sub_arr = array[start_pos .. end_pos]
    current_max_range = (sub_arr.max - sub_arr.min) if current_max_range.nil?
    
    if (sub_arr.max - sub_arr.min) > current_max_range
      current_max_range = sub_arr.max - sub_arr.min
    end
    
    start_pos += 1
    end_pos += 1
  end
  current_max_range
end

if __FILE__ == $PROGRAM_NAME
  p windowed_max_range([1, 0, 2, 5, 4, 8], 2) #== 4 # 4, 8
  p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
  p windowed_max_range([1, 0, 2, 5, 4, 8], 4) #== 6 # 2, 5, 4, 8
  p windowed_max_range([1, 3, 2, 5, 4, 8], 5) #== 6
  
end