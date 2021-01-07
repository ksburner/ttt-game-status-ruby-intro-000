# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def space_occupied?(board, space)
  return (board[space] == "X" || board[space] == "O")
end

def spaces_equal(board, spaces)
  val = board[spaces[0]]
  spaces.all? do |index|
    board[index] == val
  end
end

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if (space_occupied?(board, combo[0]) && 
      board[combo[0]] == board[combo[1]] && 
      board[combo[0]] == board[combo[2]])
end
