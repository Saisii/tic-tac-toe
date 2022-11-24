p $board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
$round_number = 0 ##even round numbers are O, odd round numbers are X

def display_board (board) 
    puts " #{$board[0]} | #{$board[1]} | #{$board[2]}"
    puts "----------"
    puts " #{$board[3]} | #{$board[4]} | #{$board[5]}"
    puts "----------"
    puts " #{$board[6]} | #{$board[7]} | #{$board[8]}"
end

display_board ($board)

def player_O_move (board)
    p "Its round #{$round_number}"
    puts "Where do you want to put an O?"
    choice = gets.chomp.to_i - 1
    p "You chose #{choice + 1}"
    if $board[choice] == "O" || $board[choice] == "X"
        puts "Not a valid move. Choose again."
    else
        puts "Its a valid move"
        $round_number = $round_number + 1
        $board[choice] = "O" 
    end
    display_board (board)
end

def player_X_move (board)
    p "Its round #{$round_number}"
    puts "Where do you want to put an X?"
    choice = gets.chomp.to_i - 1
    if $board[choice] == "O" || $board[choice] == "X"
        puts "Not a valid move. Choose again."
    else
        puts "Its a valid move"
        $round_number = $round_number + 1
        $board[choice] = "X"
    end
    display_board (board)
end

def play 
    while $round_number < 9
        if $round_number % 2 == 0
            p "It's player O's turn"
            player_O_move ($board)
        else
            p "It's player X's turn"
            player_X_move ($board)
        end
    end
end


play 


