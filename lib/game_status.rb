require "pry"

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [6,7,8],[0,3,6],[2,5,8],[2,4,6],[0,4,8],[1,4,7],[0,1,2], [3,4,5],
]

def won?(board)
  final_array = []
WIN_COMBINATIONS.each do |win_row|
  win_index_1 = win_row[0]
  win_index_2 = win_row[1]
  win_index_3 = win_row[2]

  position_1 = board[win_row[0]]
  position_2 = board[win_row[1]]
  position_3 = board[win_row[2]]

  final_array
end
=begin
 draw = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
  if final_array == [] || final_array == draw
    false
  else
    final_array
  end
end
=end
board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]
p won?(board) #=> [0,1,2]
