require "ex48/lexicon.rb"
require "test/unit"

class TestNAME < Test::Unit::TestCase
  def test_directions()
  	lexicon = Lexicon.new()
    assert_equal(lexicon.scan("north"), [['direction', 'north']])
  end
end