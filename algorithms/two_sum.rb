def two_sum?(arr, target_sum)
  arr.length.times do |idx|
    arr.length.times do |idx2|
      next if idx == idx2
      return true if arr[idx] + arr[idx2] == target_sum
    end
  end
  return false
end

def okay_two_sum?(arr, target_sum)
  sortedarr = arr.sort
  found = nil
  sortedarr.each_with_index do |i, idx|
    arr_find = sortedarr[0 ... idx] + sortedarr[(idx + 1) .. -1]
    found = arr_find.bsearch { |x| x == ( target_sum - i) }
    break unless found.nil?
  end
  
  found ? true : false
end
      
def best_two_sum?(arr, target_sum)
  store = Hash.new(0)
  arr.each { |x| store[x] += 1 }
  
  store.keys.each do |x|
    return false if target_sum - x == x && store[x] == 1
    return true if store.include?(target_sum - x)
  end
  false
end
    
# 
# def best_four_sum?(arr, target_sum)
# store = Hash.new(0)
# arr.each { |x| store[x] += 1 }
# 
#   3.times do
#     store.keys.each do |x|
#     return false if target_sum - x == x && store[x] == 1
#     return true if store.include?(target_sum - x)
#   end
# false
# end  
# 
      
if $PROGRAM_NAME == __FILE__
  arr = [0, 1, 5, 7]
  p two_sum?(arr, 6) # => should be true
  p two_sum?(arr, 10) # => should be false
  # 
  p  okay_two_sum?(arr, 6) # => should be true
  p okay_two_sum?(arr, 10) # => should be false
  
  # 
  p  best_two_sum?(arr, 6) # => should be true
  p best_two_sum?(arr, 10) # => should be false
  
  
end