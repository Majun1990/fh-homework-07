class Challenge3
  attr_reader :input_string
  include Enumerable

  def initialize(input_string)
    @input_string = input_string
  end

  def rewrite
    stack = []
    count = 0
    string = []
    @input_string = []
    @input_string << input_string

    @input_string.each do|string|
      string.to_a
      if string == string.last
        count +=1
      else
        puts count
        puts string
        stack << count
        stack << string
      end
    end
    puts stack
  end
end
