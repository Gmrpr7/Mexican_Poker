class Poker_game
	def initialize
		@deck = %w(AH AS AD AC 2H 2S 2D 2C 3H 3S 3D 3C 4H 4S 4D 4C 
							5H 5S 5D 5C 6H 6S 6D 6C 7H 7S 7D 7C JH JS JD JC QH 
							QS QD QC KH KS KD KC)
	end

	def players
		puts "How many computer players would you like to play against:"
		@players = gets.chomp
	end

	def shuffle_deck
		2.times { @deck = @deck.shuffle }
		@shuffled_deck = @deck
	end

	def deal
		hands = []
		(@players = 2) if @players.nil?
		(1..@players).each do |player|
			hands << instance_variable_set("@hand#{player}",[])
		end

		hands.each do |hand|
			5.times { hand.push(@shuffled_deck.shift) }
		end

		hands
	end
end

game = Poker_game.new

game.shuffle_deck
p game.deal
