class StringCalculator
  def self.add(numbers)
    if numbers.start_with?("//")
      delimiter, rest = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
      rest.split(delimiter).map(&:to_i).sum
    else
      numbers = numbers.gsub("\n", ",")
      numbers.split(',').map(&:to_i).sum
    end
  end
end

