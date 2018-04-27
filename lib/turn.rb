def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  return index.between?(0, 8) && !position_taken?(board, index)
end


def position_taken?(board, index)
  return board[index] == 'X' || board[index] == 'O'
end


def move(board, index, token='X')
  board[index] = token
end


def input_to_index(input)
  index = input.to_i - 1
end