class Lexicon
	def initialize
		@word_types = ['direction', 'verb', 'stop', 'noun']
		@lexicon = {
			'direction' => ['north', 'south', 'east', 'west', 'up', 'down', 'left', 'right', 'back'],
			'verb' => ['go', 'stop', 'eat', 'kill'],
			'stop' => ['the', 'in', 'of', 'from', 'at', 'it'],
			'noun' => ['door', 'bear', 'princess', 'cabinet'],
		}
	end

	def convert_number(word) 
		begin
			return Integer(word)
		rescue
			return nil
		end
	end

	def scan(words)
		converted_words = words.split(' ')
		pairs = []
		converted_words.each do |word| 
			pairs.push(get_word_type(word))
		end
		return pairs
	end

	def get_word_type(word)
		word_type = 'error'
		if convert_number(word) != nil
			word_type = 'number'
			word = convert_number(word)
		else
			@word_types.each do |type|
				if @lexicon[type].index(word) != nil
					word_type = type
				end
			end
		end
		return [word_type, word]
	end

# stuff = $stdin.gets.chomp
# words = stuff.split
# tuples = []
# words.each do |word|
# 	tuples.push([word, ])
# end
end