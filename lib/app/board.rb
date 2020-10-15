require_relative 'player.rb'
require 'pry'
class Board
  attr_accessor 
  @board = ["", "", "", "", "", "", "", "", ""]
 
  #Creation tu tableau de jeux vide
  def print_board
    puts "     1    2    3"
    puts "A   #{@board[0]} " + "|" + " #{@board[1]} " + "|" + " #{@board[2]} "
    puts "  ="*12
    puts "B   #{@board[3]} " + "|" + " #{@board[4]} " + "|" + " #{@board[5]} "
    puts "  ="*12
    puts "C   #{@board[6]} " + "|" + " #{@board[7]} " + "|" + " #{@board[8]} "
  end

  #Le joueur choisie ou il veux jouer
  def play_turn(player)
    puts "Choisie ta case :\nA1 = 1\nA2 = 2\nA3 = 3\nB1 = 4\nB2 = 5\nB3 = 6\nC1 = 7\nC2 = 8\nC3 = 9"
    choice = gets.chomp
    case choice
    when 1
     return @board[0] = player.symbole
    when 2
      @board[1] = player.symbole
    when 3
      @board[2] = player.symbole
    when 4
      @board[3] = player.symbole
    when 5
      @board[4] = player.symbole
    when 6
      @board[5] = player.symbole
    when 7
      @board[6] = player.symbole
    when 8
      @board[7] = player.symbole
    when 9
      @board[8] = player.symbole
    end
  end

  #Combo de victoire
  def victory?
    if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[0] == @board[4] && @board[0] == @board[8]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8]) || (@board[6] == @board[4] && @board[6] == @board[2])
      puts "Win"
    end
  end
  
  

  
 
  binding.pry
end


