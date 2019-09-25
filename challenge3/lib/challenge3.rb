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
    string = []
    input_string = []
   # @input_string << input_string

    @input_string.chars.each do|char|

      if char == input_string.last #if current char is the same as the last char in array string
        count +=1            #add 1 to the count of the char
        input_string << char
      else                   #if current char is not the same as the last char in array string
        print count
        print char
        optimized_array << count       #put count in the optimized_array
        optimized_array << char        #put char in the optimized_array
      end
    end
    puts optimized_array               #after iteration through input_string, 
  end                                  #put out the information inside the optimized_array
end
