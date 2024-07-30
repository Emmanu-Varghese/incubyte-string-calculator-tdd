require 'minitest/autorun'

class StringCalculatorTest < Minitest::Test
  def test_empty_string
    assert_equal 0, StringCalculator.add("")
  end

  def test_single_number
    assert_equal 1, StringCalculator.add("1")
  end

  def test_two_numbers
    assert_equal 6, StringCalculator.add("1,5")
  end

  def test_multiple_numbers
    assert_equal 12, StringCalculator.add("1,5,4,2")
  end

  def test_new_line_between_numbers
    assert_equal 6, StringCalculator.add("1\n2,3")
  end

  def test_custom_delimiter
    assert_equal 3, StringCalculator.add("//;\n1;2")
  end

  def test_negative_numbers
    assert_raises(RuntimeError) do
      StringCalculator.add("1,-2,3")
    end
  end

  def test_multiple_negative_numbers
    exception = assert_raises(RuntimeError) do
      StringCalculator.add("//;\n1;-2;3;-4")
    end
    assert_equal "negative numbers not allowed -2,-4", exception.message
  end

end
