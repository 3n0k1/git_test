class TicTacToe
	def initialize
		@board = [1,2,3,4,5,6,7,8,9]
		@victory_array = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
	end

	def board
		puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
		puts "---+---+---"
		puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
		puts "---+---+---"
		puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end

	def playX
		puts "Chose your position(1-9): "
		position = gets.chomp.to_i
		position_in_board = (position - 1)
		@board[position_in_board] = "X"
	end

	def playO
		puts "Chose your position(1-9): "
		position = gets.chomp.to_i
		position_in_board = (position - 1)
		@board[position_in_board] = "O"
	end

	def victory?
		for i in 0..7
				if @board[@victory_array[i][0]] == @board[@victory_array[i][1]] && @board[@victory_array[i][1]] == @board[@victory_array[i][2]]
					return true
					winner = @board[@victory_array[i][0]]
				end
		end
		return false
	end

	def full_board?
    @board.all? do |position| 
			position == "X" || position == "O"
		end
  end

	def match
    game_end = false
    until game_end
      board
      playO
			current_player = "O player"
      game_end = true if victory? || full_board?
      break if game_end
      board
      playX
			current_player = "X player"
      game_end = true if victory? || full_board?
    end
    board
    if victory?
      puts "Congratulations, #{current_player} won!"
    else
      puts "It's a tie!"
    end
  end


end

game = TicTacToe.new()
game.match()