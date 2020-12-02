require './system'
require './display'

class ComputerPlayer

    include Display
    include System

    def getCode
        print "Enter your 4-digit code: "
        masterCode= gets.chars.map(&:to_i)
        masterCode.pop
        showCode(masterCode)
    end

    def guessGenerator
        combination = Array.new()
        for i in 1..4
            combination.push(rand(6)+1)
        end

       
        return combination
    end


    def guessing
        round = 0
        code = getCode
        while round < 12
            puts "\n\nYou have #{12-round} turns left! \n\n"
            guess = guessGenerator
            match(guess,code)
            round +=1
        end
    end


end