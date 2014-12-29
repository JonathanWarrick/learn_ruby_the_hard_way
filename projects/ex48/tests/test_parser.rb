require "ex48/parser.rb"
require "test/unit"

class TestPARSER < Test::Unit::TestCase
	def test_peek
		assert_equal(peek([['noun', 'bear']]), 'noun')
		assert_equal(peek([[]]), nil)
	end

	def test_match
		assert_equal(match([['noun', 'princess'], ['direction', 'north']], 'noun'), ['noun', 'princess'])
		assert_equal(match([['noun', 'princess'], ['direction', 'north']], 'stop'), nil)
		assert_equal(match([[]], 'noun'), nil)
	end

	def test_skip
		# assert_equal(skip([['stop', 'the'], ['stop', 'on'], ['noun', 'princess']], 'stop'), ['noun', 'princess'])
		# assert_equal(skip([['stop', 'the'], ['stop', 'on']], 'stop'), nil)
	end

	def test_parse_verb
		assert_equal(parse_verb([['verb', 'eat'], ['stop', 'the'], ['stop', 'on'], ['direction', 'north']]), ['verb', 'eat'])
		assert_raise(ParserError, "Expected a noun next.") {parse_verb([['noun', 'princess'], ['verb', 'eat'], ['stop', 'the'], ['stop', 'on'], ['direction', 'north']])}
	end

	def test_parse_object
		assert_equal(parse_object([['stop', 'the'], ['stop', 'on'], ['direction', 'north']]), ['direction', 'north'])
		assert_equal(parse_object([['stop', 'the'], ['stop', 'on'], ['noun', 'princess']]), ['noun', 'princess'])
		assert_raise(ParserError, "Expected a verb next.") {parse_verb([['noun', 'princess'], ['verb', 'eat'], ['stop', 'the'], ['stop', 'on'], ['direction', 'north']])}
	end

	def test_parse_subject
		assert_equal(parse_subject([['verb', 'eat']]), ['noun', 'player'])
		assert_equal(parse_subject([['stop', 'the'], ['stop', 'on'], ['noun', 'princess']]), ['noun', 'princess'])
		assert_raise(ParserError, "Expected a verb next.") {parse_subject([['direction', 'east'], ['verb', 'eat'], ['stop', 'the'], ['stop', 'on'], ['direction', 'north']])}
	end

	def test_parse_sentence
		test_sentence = parse_sentence([['verb', 'run'], ['direction', 'north']])
		assert_equal(test_sentence.subject, 'player')
		assert_equal(test_sentence.verb, 'run')
	end
end
