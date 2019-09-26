class Challenge4
  def self.factorial(number)
    _factorial(number, 1)
  end

  private

  def self._factorial(number, value)
    return value if number == 1 || number == 0
    _factorial(number-1,value*number)
  end
end
