# how many turns have been played
def turn_count(board)
  turns = 0
  board.each do | input |
    if input == "X" || input == "O"
      turns += 1
    end
  end
  return turns
end

# who's turn is "X" or "O"
=begin
def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end
=end

# using .even instead of %
=begin
def current_player(board)
  if turn_count(board).even?
    return "X"
  else
    return "O"
  end
end
=end

# using ternary operator
def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end
