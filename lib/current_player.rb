# how many turns have been played

def turn_count(board)
    counter = 0

    board.each do |input|
      if input == "X" || input == "O"
        counter += 1
      end
    end
    counter
end

# whose turn is it - "X" or "O"

# def current_player(board)
#     if turn_count(board) % 2 == 0
#       return "X"
#     else
#       return "O"
#     end
# end

# whose turn is it - "X" or "O" - using .even

# def current_player(board)
#     if turn_count(board).even?
#       return "X"
#     else
#       return "O"
#     end
# end

# whose turn is it - "X" or "O" - ternary operator
def current_player(board)
  turn_count(board).even? ? "X" :  "O"
end
