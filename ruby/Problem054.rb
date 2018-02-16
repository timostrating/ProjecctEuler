# In the card game poker, a hand consists of five cards and are ranked, from
# lowest to highest, in the following way:

#   * High Card: Highest value card.
#   * One Pair: Two cards of the same value.
#   * Two Pairs: Two different pairs.
#   * Three of a Kind: Three cards of the same value.
#   * Straight: All cards are consecutive values.
#   * Flush: All cards of the same suit.
#   * Full House: Three of a kind and a pair.
#   * Four of a Kind: Four cards of the same value.
#   * Straight Flush: All cards are consecutive values of same suit.
#   * Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.

# The cards are valued in the order:
# 2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.

# If two players have the same ranked hands then the rank made up of the
# highest value wins; for example, a pair of eights beats a pair of fives
# (see example 1 below). But if two ranks tie, for example, both players
# have a pair of queens, then highest cards in each hand are compared (see
# example 4 below); if the highest cards tie then the next highest cards are
# compared, and so on.

# Consider the following five hands dealt to two players:

#         Hand   Player 1            Player 2              Winner
#         1      5H 5C 6S 7S KD      2C 3S 8S 8D TD        Player 2
#                Pair of Fives       Pair of Eights
#         2      5D 8C 9S JS AC      2C 5C 7D 8S QH        Player 1
#                Highest card Ace    Highest card Queen
#         3      2D 9C AS AH AC      3D 6D 7D TD QD        Player 2
#                Three Aces          Flush with Diamonds
#                4D 6S 9H QH QC      3D 6D 7H QD QS
#         4      Pair of Queens      Pair of Queens        Player 1
#                Highest card Nine   Highest card Seven
#                2H 2D 4C 4D 4S      3C 3D 3S 9S 9D
#         5      Full House          Full House            Player 1
#                With Three Fours    with Three Threes

# The file, [1]poker.txt, contains one-thousand random hands dealt to two
# players. Each line of the file contains ten cards (separated by a single
# space): the first five are Player 1's cards and the last five are Player
# 2's cards. You can assume that all hands are valid (no invalid characters
# or repeated cards), each player's hand is in no specific order, and in
# each hand there is a clear winner.

# How many hands does Player 1 win?


games = [
  "5H 5C 6S 7S KD  2C 3S 8S 8D TD",
  "5D 8C 9S JS AC  2C 5C 7D 8S QH",
  "2D 9C AS AH AC  3D 6D 7D TD QD",
  "4D 6S 9H QH QC  3D 6D 7H QD QS",
  "2H 2D 4C 4D 4S  3C 3D 3S 9S 9D",

  "8C TS KC 9H 4S  7D 2S 5D 3S AC",
  "5C AD 5D AC 9C  7C 5H 8D TD KS",
  "3H 7H 6S KC JS  QH TD JC 2D 8S",
  "TH 8H 5C QS TC  9H 4D JC KS JS",
  "7C 5H KC QH JD  AS KH 4C AD 4S",
  "5H KS 9C 7D 9H  8D 3S 5D 5C AH",
  "6H 4H 5C 3H 2H  3S QH 5S 6S AS"
]


# enum {
#   FOO,
#   BAR,
#   BAZ
# }
:high_card          # Highest value card.
:one_pair           # Two cards of the same value.
# :Two Pairs          # Two different pairs.
# :Three of a Kind    # Three cards of the same value.
# :Straight           # All cards are consecutive values.
# :Flush              # All cards of the same suit.
# :Full House         # Three of a kind and a pair.
# :Four of a Kind     # Four cards of the same value.
# :Straight Flush     # All cards are consecutive values of same suit.
# :Royal Flush        # Ten, Jack, Queen, King, Ace, in same suit.


class Card
  attr_accessor :card
  
	def initialize v
		# puts v
	end
end


class Hand 
  attr_accessor :cards
  attr_accessor :score

	def initialize v
		puts v.inspect
  end
  
  def <(other)
    puts "magic"
  end
end


wins = 0

(0...games.length).each do |i|
  game = games[i]
  player_one = Hand.new(game.split(" ")[0..4])
  player_two = Hand.new(game.split(" ")[5..9])

  if player_one < player_two
    wins += 1
  end
end