gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 4, Scrabble.new.score("ab")
  end

  def test_ignores_case
    assert_equal 8, Scrabble.new.score("abAB")
  end

  def test_gives_zero_for_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_gives_zero_for_empty_string
    assert_equal 0, Scrabble.new.score("")
  end

  def test_gives_zero_for_integer
    assert_equal 0, Scrabble.new.score(1)
  end
end
