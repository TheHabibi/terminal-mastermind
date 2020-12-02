require './system'
require './display'

class HumanPlayer

    include Display
    include System

    def generateCode
        combination = Array.new()
        for i in 1..4
            combination.push(rand(6)+1)
        end

        combination.each do |tile|
            print $colors[tile]
        end
        return combination
    end

    def guessInput
        print "Enter your guess: "
        guess = gets.chars.map(&:to_i)
        guess.pop
        return guess
    end
    
    def guessing
        round = 0
        code = generateCode
        while round < 12
            puts "\n\nYou have #{12-round} turns left! \n\n"
            guess = guessInput
            match(guess,code)
            round +=1
        end
    end


end