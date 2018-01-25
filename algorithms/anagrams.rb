require 'byebug'
def anagram?(string,string2)
  result = string.chars.permutation.map(&:join)
  result.include?(string2)
end

def anagram_two?(string, string2)
  string_arr = string.chars
  string2_arr = string2.chars
  
  string_arr.length.times do
    first = string_arr.shift
    idx = string2_arr.find_index(first)
    return false if idx.nil?
    string2_arr.delete_at(idx)
  end
  
  string_arr.empty? && string2_arr.empty?
end

def anagram_three?(string, string2)
  string.chars.sort == string2.chars.sort
end

def anagram_four?(string, string2)
  counter = Hash.new(0)
  string.chars.each { |char| counter[char] += 1}
  string2.chars.each { |char| counter[char] -= 1}
  counter.values.all? {|x| x == 0}
end

if __FILE__ == $PROGRAM_NAME
  p anagram?("mike", "ikem")
  p anagram?("mike", "ikexm")
  p anagram?("e", "")
  p anagram?("e", "isdfdskem")
  p anagram?("mikeism", "ismikem")
  p ""
  p anagram_two?("mike", "ikem")
  p anagram_two?("mike", "ikexm")
  p anagram_two?("e", "")
  p anagram_two?("e", "isdfdskem")
  p anagram_two?("mikeism", "ismikem")
  p ""
  p anagram_three?("mike", "ikem")
  p anagram_three?("mike", "ikexm")
  p anagram_three?("e", "")
  p anagram_three?("e", "isdfdskem")
  p anagram_three?("mikeism", "ismikem")
  p ""
  p anagram_four?("mike", "ikem")
  p anagram_four?("mike", "ikexm")
  p anagram_four?("e", "")
  p anagram_four?("e", "isdfdskem")
  p anagram_four?("mikeism", "ismikem")
  p ""
  
end