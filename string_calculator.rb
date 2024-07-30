class StringCalculator
  def self.add(numbers)
    numbers = numbers.gsub("\n", ",")
    numbers.split(',').map(&:to_i).sum
  end
end
