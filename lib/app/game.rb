require_relative 'player.rb'
require 'pry'
class Game

  def initialize
    puts "Bienvenue"
    puts "Bonjour joueur 1 entre un nom :"
    name = gets.chomp
    player1 = Player.new(name, o)
    puts "Bienvenue #{name} tu joue avec les o"
    puts "Bonjour joueur 2 entre un nom :"
    name = gets.chomp
    player2 = Player.new(name, x)
    puts "Bienvenue #{name} tu joue avec les x"
    puts "#{player1.name} joue contre #{player2.name}"
  end
  
  def turn
    print_board
  
  end


  
  


end
#binding.pry
