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
WIN_COMBINATIONS.each do |row|
  row.each do |index|
    p row
    if board[index] == "X" && board[index] == "X" && board[index] == "X"
      final_array << index
      p index
    end
  end

  end
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
