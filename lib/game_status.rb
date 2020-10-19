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
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


def won?(board)
  all_match = false
  WIN_COMBINATIONS.each do |win_combo|

  if win_combo.all?{|win_index|board[win_index]=="X"} || win_combo.all?{|win_index|board[win_index]=="O"}
    all_match = win_combo
      end
  end
     all_match
end



  def full?(board)
    board.all? {|i| i == "X" || i == "O"}
  end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && full?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  else return nil
  end
end
