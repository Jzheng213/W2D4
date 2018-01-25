def bad_my_min(array)
  array.length.times do |idx1|  
    min = true
    array.length.times do |idx2|
      next if idx1 == idx2
      min = false if array[idx2] < array[idx1]
    end
    return array[idx1] if min
  end
end    


def my_min(array)
  smallest = array.first
  array.each do |el|
    smallest = el if el < smallest
  end
  smallest  
end


def sub_sum(array)
  sums = []
  array.length.downto(1).each do |n|
    array.each_cons(n) do |combination|
      sums << combination.reduce(&:+)
    end
  end
  sums.max
end


def sub_sum(array)
  if array.all? { |el| el < 0 }
    return array.max
  else
    maxsum = array.max
    currentsum = 0
    array.each do |el|
      currentsum = 0 if currentsum < 0
      currentsum += el
      maxsum = currentsum if currentsum > maxsum
    end
    maxsum
  end
    
end
  
if __FILE__ == $PROGRAM_NAME
  list = [2, 3, -6, 7, -6, 7]
  list2 = [-5, -1, -3]
  # p bad_my_min(list)
  # p my_min(list)
  p sub_sum(list)
  p sub_sum(list2)
end