class Challenge4
  def self.factorial(number)
    _factorial(number, 1)
  end

  private

  def self._factorial(number, value)
    return 1 unless number > 0
    value = number*factorial(number-1)
  end
end
