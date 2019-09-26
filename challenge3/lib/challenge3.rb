class Challenge3
  attr_reader :input_string
  include Enumerable

  def initialize(input_string)
    @input_string = input_string
    self
  end

  def rewrite
    optimized_array = []
    count = 0
    input_string = []
    last_char = nil
    @input_string.chars.each do|char|
      if last_char == nil
        count = 1
        last_char = char
      elsif char == last_char #if current char is the same as the last char in array string
        count += 1          #add 1 to the count of the char
      else                   #if current char is not the same as the last char in array string
        optimized_array << count       #put count in the optimized_array
        optimized_array << last_char        #put char in the optimized_array
        count = 1
        last_char = char
      end
    end
    optimized_array << count
    optimized_array << last_char  
    optimized_array.join               #after iteration through input_string, 
  end                                  #put out the information inside the optimized_array
end
