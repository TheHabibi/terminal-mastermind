def generateCode
    combination = Array.new()
    for i in 1..4
        combination.push(rand(6)+1)
    end

    puts combination
end



$colors = {1 => "orange",
          2 => "pink",
          3 =>  "red",
          4 =>  "blue",
          5 =>  "green",
          6 =>  "white"
        }
    

    p $colors
generateCode