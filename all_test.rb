gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    assert all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    refute all_zeros
  end

  def test_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = words.all? do |word|
      word == "gone"
    end
    assert all_gone
  end

  def test_not_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    all_gone = words.all? {|w| w == "gone"}
    refute all_gone
  end

  def test_all_empty
    strings = ["", "", "", "", "", "", ""]
    all_empty = strings.all? {|s| s.empty?}
    assert all_empty
  end

  def test_not_all_empty
    strings = ["", "", "", "full", "", "", ""]
    all_empty = strings.all? {|s| s.empty?}
    refute all_empty
  end

  def test_not_all_uppercase
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = words.all? {|w| w == w.upcase}
    refute all_caps
  end

  def test_all_lies
    lies = [false, false, false, false]
    all_lies = lies.all? {|l| l == false}
    assert all_lies
  end

  def test_all_multiples_of_7
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = numbers.all? {|n| n % 7 == 0 }
    assert all_multiples_of_7
  end

  def test_not_all_3_digits_long
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = numbers.all? {|n| n.to_i.size == 3}
    refute all_3_digits
  end

  def test_all_4_letter_words
    words = ["love", "hate", "fire", "bird", "call"]
    all_4_letters = words.all? {|w| w.length == 4}
    assert all_4_letters
  end

end
