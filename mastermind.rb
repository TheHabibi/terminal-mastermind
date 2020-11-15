def generateCode
    combination = Array.new()
    for i in 1..4
        combination.push(rand(6)+1)
    end

    combination.each do |tile|
        puts $colors[tile]
    end
    return combination
end

def guessing
    round = 0

    while round < 12
        guess = gets.chars.map(&:to_i)
        guess.pop
        match(guess)
    end
end

def match(guess)

    for i in 0..3
        if $code[i] == guess[i]
            puts "red"
        end
    end
end

$colors = {1 => "orange",
          2 => "pink",
          3 =>  "red",
          4 =>  "blue",
          5 =>  "green",
          6 =>  "white"
        }

    
$code = generateCode
guessing