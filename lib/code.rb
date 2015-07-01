=begin
  -Main class for controlling game
      -method for compare (victory?)
      -method select opponent
      -main play method

  -Player class
    -method make_choice
      -inherit to human and computer
=end
module MAndMRps
  class Code

    def initialize
      @options = ["rock", "paper", "scissors"]
      @player1 = Human.new
    end

    def play
     select_opponent

     @choice1 = @player1.choice(@options)
     p @choice1
     @choice2 = @player2.choice(@options)
     p @choice2

     compare

    end

    def compare

      if @choice1 == @choice2
        puts "Tie. Try Again"

      elsif @choice1 == "rock"
        if @choice2 == "paper"
          outcome(2)
        else
          outcome(1)
        end

      elsif @choice1 == "paper"
        if @choice2 == "scissors"
          outcome(2)
        else
          outcome(1)
        end

      elsif @choice1 == "scissors"
        if @choice2 == "rock"
          outcome(2)
        else
          outcome(1)
        end

    end

  end

    def outcome(val)

      if val == 1
        puts "Player 1 wins"
      else
        puts "Player 2 wins"
      end

    end

  def select_opponent
    puts "Is your opponent human (h) or computer?"
    choice = gets.chomp

    if choice == "h"
      @player2 = Human.new
    else
      @player2 = Computer.new
    end

  end

  end

  class Human

    attr_accessor :choice

    def choice(options)

      puts "What is your weapon of choice #{options}"
      choice = gets.chomp.downcase

    end


  end

  class Computer

    attr_accessor :choice

    def choice(options)
      
      choice = options.sample
      
    end

  end

end