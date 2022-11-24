p board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

def display_board (board) 
    puts " #{board[0]} | #{board[1]} | #{board[2]}"
    puts "----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]}"
    puts "----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]}"
end

display_board (board)

def player_O_move (board)
    puts "Where do you want to put an O?"
    choice = gets.chomp.to_i - 1
    # board[choice] = board[choice].to_s
    board[choice] = "O" 
    display_board (board)
end

def player_X_move (board)
    puts "Where do you want to put an X?"
    choice = gets.chomp.to_i - 1
    board[choice] = "X"
    display_board (board)
end


player_O_move (board)
player_X_move (board)

