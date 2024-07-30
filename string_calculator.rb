class StringCalculator
  def self.add(numbers)
    numbers.empty? ? 0 : numbers.split(',').map(&:to_i).sum
  end
end
