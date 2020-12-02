require './system'
require './display'

class Game
    include System
    include Display

    def gameMode
        puts"Press '1' to be the MASTER"
        puts"Press '2' to be the SOLVER" 
        game_mode = gets.chomp
        gameStart(game_mode)
        
    end

    def gameStart(mode)
        if mode == '1'
            solver = ComputerPlayer.new
            solver.guessing
        end

        if mode == '2'
            breaker = HumanPlayer.new       
            breaker.guessing
        end
    end


end

