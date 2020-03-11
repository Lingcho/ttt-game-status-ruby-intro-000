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

WIN_COMBINATIONS.each do |win_combination|

  position_1 = board[win_row[0]]
  position_2 = board[win_row[1]]
  position_3 = board[win_row[2]]

  win_row = [position_1, position_2, position_3]

  win_row.map do |spot|
    spot == "X" || "O"
  end
  p win_row

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
