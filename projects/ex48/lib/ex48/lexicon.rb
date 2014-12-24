class Lexicon
	def scan(name)
		return name
	end

	def get_word_type(word)
		word_types.each do |type|
			lexicon[type].index(word)? return type
		return nil

	word_types = ['direction', 'verb', 'stop', 'noun', 'number']

	lexicon = {
		'direction' => ['north', 'south', 'east', 'west', 'up', 'down', 'left', 'right', 'back'],
		'verb' => ['go', 'stop', 'eat', 'kill'],
		'stop' => ['the', 'in', 'of', 'from', 'at', 'it'],
		'noun' => ['door', 'bear', 'princess', 'cabinet']
	# 	# 'number' => /[0-9]/
	}

# stuff = $stdin.gets.chomp
# words = stuff.split
# tuples = []
# words.each do |word|
# 	tuples.push([word, ])
# end
end