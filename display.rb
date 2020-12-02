module Display

    $colors = {1 => "\e[43m  1  \e[0m ",
               2 => "\e[41m  2  \e[0m ",
               3 => "\e[101m  3  \e[0m ",
               4 => "\e[44m  4  \e[0m ",
               5 => "\e[42m  5  \e[0m ",
               6 => "\e[45m  6  \e[0m "
    }

    def showCode(array)
        array.each do |tile|
            print $colors[tile]
        end
    end

    
    def showClues(red,white)
        puts "\n\nClues:"
        red.times { print "\e[91m\u25CF\e[0m "}
        white.times { print "\e[37m\u25CB\e[0m "}
    end



end