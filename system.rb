require './display'

module System

    include Display

    def match(guess,code)
        red = 0
        white = 0
        temp = guess
        tempCode = code.dup
        
        showCode(guess)

        for i in 0..3
            if tempCode[i] == temp[i]
                red += 1
                temp[i] = nil 
                tempCode[i] = nil   
            end
        end
        
        
        for i in 0..3    
            if  tempCode.include?(temp[i]) && temp[i] != nil
                remove = tempCode.find_index(temp[i])
                tempCode[remove] = nil
                temp[i] = nil
                white += 1
            end
        end

        showClues(red,white)
    end          
end



    


