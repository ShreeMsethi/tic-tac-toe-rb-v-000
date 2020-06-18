<<<<<<< HEAD
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
    puts " #{board[0]}" + " | " + "#{board[1]}" + " | " + "#{board[2]} "
    puts "-----------"
    puts " #{board[3]}" + " | " + "#{board[4]}" + " | " + "#{board[5]} "
    puts "-----------"
    puts " #{board[6]}" + " | " + "#{board[7]}" + " | " + "#{board[8]} "
end

def input_to_index(input)
 input.to_i - 1
=======
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

WIN_COMBINATIONS = [
 # 1st Horizontal -Top Row  
  [0,1,2],
# 2nd Horizontal - Middle Row
  [3,4,5],
# 3rd Horizontal - Last Row
  [6,7,8],
# 1st Vertical   - 1st Coloumn
  [0,3,6],
# 2nd Verical    - 2nd Coloumn
  [1,4,7],
# 3rd Vertical   - 3rd Coloumn 
  [2,5,8],
# 1 Diagonal     
  [0,4,8],
# 2nd Diagonal  
  [6,4,2]]
  
def display_board(board)
  puts " #{board[0]}" + " | " + "#{board[1]}" + " | " + "#{board[2]} "
  puts "-----------"
  puts " #{board[3]}" + " | " + "#{board[4]}" + " | " + "#{board[5]} "
  puts "-----------"
  puts " #{board[6]}" + " | " + "#{board[7]}" + " | " + "#{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
end

def move(board, index, players_character)
  board[index] = players_character
end

def position_taken?(board, index)
<<<<<<< HEAD
  if board[index] == "" || board[index] == " " || board[index] == nil
=======
  if board[index] == " " || board[index] == ""  || board[index] == nil
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
    false
  else
    true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8) == true
    true
<<<<<<< HEAD
  else 
=======
  else
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
<<<<<<< HEAD
    token = current_player(board)
    move(board, index, token)
=======
    move(board, index, players_character = "X")
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
  elsif
    input=gets.strip
  end
  display_board (board)
end

def turn_count(board)
  counter = 0
<<<<<<< HEAD
   board.each do |grid|
     if grid == "X" || grid == "O"
       counter += 1
     end
   end
     counter
=======
  board.each do |grid|
    if grid == "X" || grid == "O"
      counter += 1
    end
  end
  return counter
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
end

def current_player (board)
  if turn_count(board).even?
    "X"
    else 
    "O"
  end
end

def won?(board)
<<<<<<< HEAD
    #final_combo = nil
    WIN_COMBINATIONS.each do |win_combo|
      #binding.pry
=======
    WIN_COMBINATIONS.each do |win_combo|
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
      if board[win_combo[0]] == board[win_combo[1]] &&  board[win_combo[1]] == board[win_combo[2]] &&  position_taken?(board, win_combo[0])
        return win_combo
      end
    end
    false
  end
  
  def full?(board)
<<<<<<< HEAD
    # return true if every element in the board contains either an "X" or an "O"
=======
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
    board.all? do |index| 
      if index == "X" || index == "O"
      true
      end
    end
  end  
<<<<<<< HEAD
  
  def draw?(board)
=======

def draw?(board)
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
    # returns true if the board has not been won but is full, false if the board is not won and the board is not full, and false if the board is won
    if full?(board) && won?(board) == false
      true
    else
      false
    end 
<<<<<<< HEAD
  end
  
def over?(board)
=======
  end  
  
  def over?(board)
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
    # returns true if the board has been won, is a draw, or is full.
    if won?(board) || full?(board)
      true
    elsif draw?(board)
      true
    else  
      false
    end  
end 
<<<<<<< HEAD
  
def winner(board)
  
  winning_trombo = won?(board) 
  
  # if winning_trombo
  #   binding.pry
  # end
  if winning_trombo != false && winning_trombo.all? {| i | board[i] == "X"}
    "X" 
  elsif winning_trombo != false && winning_trombo.all? {| i | board[i] == "O"}
    "O"
=======

def winner(board)
  winning_combo = won?(board) 
  
  if winning_combo != false && winning_combo.all? {| i | board[i] == "X"}
    "X" 
  elsif winning_combo != false && winning_combo.all? {| i | board[i] == "O"}
     "O"
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
  else
    nil
  end 
end

<<<<<<< HEAD
# def play(board)
#   # input = gets
    
#   while over?(board) == false
#       turn(board)
#     if over?(board) == true && won?(board) 
#       # break
#         # if winner(board) == "X"
#         #   "Congratulations X!"
#         # elsif winner(board) == "O"
#         #   "Congratulations O!"
#         # end
#     elsif draw?(board) == true
#           "Cat's Game!"
#     else
#       turn(board)
#     end
#   end
# end

# def play(board)
#   # input = gets
#   while over?(board) == false
#     turn(board)
#     if won?(board) || draw?(board) 
#       # over?(board) == true
#               if winner(board) == "X"
#                 puts "Congratulations X!"
#               elsif winner(board) == "O"
#                 puts "Congratulations O!"
#               else
#                 puts "Cat's Game"
#               end
#     # else
#     #   turn(board)
#     end  
#   end
# end

def play(board)
  turn(board) until over?(board)
    if won?(board)
      puts "Congratulations #{winner(board)}!"
      elsif draw?(board)
      puts "Cat's Game!"
    end
end
=======
def play()
 input = gets 
 
  # until the game is over
  #   take turns
  # end
  
  until over?(board)
    turn(board)
  end
  
  # if the game was won
  if won?(board)
  #   congratulate the winner
  winner_player = winner(board)
  puts "Congratulations! #{winner_player} is the winner."
  # elsif the game is draw
  elsif draw?(board) == true
  #   tell the player it has been a draw
  puts "It is a draw."
  # end 
  end

end
>>>>>>> 8aaf03ea21a40d02c7a80f736014c17f0738aec9
