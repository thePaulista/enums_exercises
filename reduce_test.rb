gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class ReduceTest < Minitest::Test

  def test_sum_a_list_of_numbers
    numbers = [32, 1, 21, 5, 81, 333]
    result = numbers.reduce(0) do |sum, number|
      sum + number
    end
    assert_equal 473, result
  end

  def test_subtract_list_of_numbers
    numbers = [28, 12, 38, 1, 91]
    result = numbers.reduce(0) do |difference, number|
      difference - number
    end
    assert_equal -170, result
  end

  def test_multiply_list_of_numbers
    numbers = [2, 3, 5, 7]
    result = numbers.reduce(1, :*)
    assert_equal 210, result
  end

  def test_capitalize_keywords_in_phrase_one_fish_two_fish_red_fish_blue_fish
    keywords = ["fish", "blue"]
    phrase = 'one fish two fish red fish blue fish'
    result = keywords.reduce(phrase) {|phrase, key| phrase.gsub(key, key.upcase) }
    assert_equal 'one FISH two FISH red FISH BLUE FISH', result
  end

  def test_divide_560_by_a_bunch_of_numbers
    numbers = [2, 2, 2, 5, 7]
    # initial value is 560
    result = numbers.reduce(560,:/)
    assert_equal 2, result
  end

  def test_subtract_smallest_values_from_100
    elements = [[8, 5, 3], [1, 9, 11], [19, 34, 6], [4, 7,2]]
    # initial value is 100
    result = elements.reduce(100) {|tot, element| tot - (element.min)}
    assert_equal 88, result
  end

  def test_add_all_the_second_values_together
    elements = [["a", 1], ["b", 9], ["c", 21]]
    # initial value is 0
    result = elements.reduce(0) {|sum, num| sum += num[1]}
    assert_equal 31, result
  end

end
