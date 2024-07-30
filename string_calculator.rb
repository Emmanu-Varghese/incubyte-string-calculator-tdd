class StringCalculator < StandardError
  def self.add(numbers)
    if numbers.start_with?("//")
      delimiter, rest = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
      numbers = rest.split(delimiter).map(&:to_i)
    else
      numbers = numbers.gsub("\n", ",").split(',').map(&:to_i)
    end

    negatives = numbers.select { |n| n < 0 }
    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    numbers.sum
  end
end
