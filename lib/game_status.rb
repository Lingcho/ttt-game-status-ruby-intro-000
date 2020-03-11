# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [2,5,8],
  [2,4,6],
  [0,4,8],
  [1,4,7]
]

def won?(board)
  final_array = []
WIN_COMBINATIONS.each do [array]
  array.each do [index]
    if board[index] == "X" || board["O"]
      final_array << index
  end
end
  final_array
end

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
