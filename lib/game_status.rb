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

def won?(array)
  final_array = []
  WIN_COMBINATIONS.each do |row_win|
    if row_win == array then final_array << row_win end
  end
  if final_array == [] || final_array == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    false
  else
    final_array
  end
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
p won?(board)
