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

  top_row_win = [0,1,2]

  # Check if each index in the top_row_win array contains an "X"
  if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
    "X won in the top row"
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
#board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]
#p won?(board) #=> [0,1,2]


board = ["X", "X", "O", " ", " ", " ", " ", " ", " "]

# Definition of indexes that compose a top row win.
top_row_win = [0,1,2]

# Check if each index in the top_row_win array contains an "X"
if board[top_row_win[0]] == "X" && board[top_row_win[1]] == "X" && board[top_row_win[2]] == "X"
  "X won in the top row"
end
