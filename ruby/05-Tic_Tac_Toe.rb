class TicTacToe
	def initialize
		@board = [1,2,3,4,5,6,7,8,9]
	end

	def board()
		puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
		puts "---+---+---"
		puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
		puts "---+---+---"
		puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end

	def playX()
		puts "Chose your position(1-9): "
		position = gets.chomp.to_i
		position_in_board = (position - 1)
		@board[position_in_board] = "X"
	end

	def playO()
		puts "Chose your position(1-9): "
		position = gets.chomp.to_i
		position_in_board = (position - 1)
		@board[position_in_board] = "O"
	end


end

game = TicTacToe.new()
game.board()
game.playX()
game.board()