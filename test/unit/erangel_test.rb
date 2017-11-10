require 'test_helper'

class ErangelTest < Minitest::Test
  def test_random_coordinate_length
    result = Erangel.random_coordinate
    assert_equal 2, result.length
  end

  def test_random_coordinate_alphabet
    result = Erangel.random_coordinate
    assert result.is_a? String
    assert %w{A B C D E F G H}.include? result[0]
    assert %w{I J K L M N O P}.include? result[1]
  end

  def test_random_place
    result = Erangel.random_place
    assert result.is_a? String
  end

  def test_random_alternative
    result = Erangel.random_place
    assert result.is_a? String
    assert result.include? "Rozhok"
  end
end
