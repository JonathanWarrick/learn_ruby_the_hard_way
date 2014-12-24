lexicon = {
	'direction' => ['north', 'south', 'east', 'west', 'up', 'down', 'left', 'right', 'back'],
	'verb' => ['go', 'stop', 'eat', 'kill'],
	'stop' => ['the', 'in', 'of', 'from', 'at', 'it'],
	'noun' => ['door', 'bear', 'princess', 'cabinet']
	# 'number' => /[0-9]/
}

stuff = $stdin.gets.chomp
words = stuff.split
tuples = []
# words.each do |word|
# 	tuples.push([word, ])
# end