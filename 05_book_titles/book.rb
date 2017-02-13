class Book
    
    def title=( x )
        array = x.to_s.split
        newarray = array.collect {|y| y.to_s.capitalize}
        i = 1
        while i < newarray.count
        if newarray.at(i).to_s.downcase == "the" || newarray.at(i).to_s.downcase == "and" || newarray.at(i).to_s.downcase == "over" || newarray.at(i).to_s.downcase == "a" || newarray.at(i).to_s.downcase == "an" || newarray.at(i).to_s.downcase == "in" || newarray.at(i).to_s.downcase == "of"
        newarray.at(i).downcase!
        i = i + 1
        else
        i = i + 1 
        end
    
        end
        @prueba = newarray.join(" ")
    end
    
    def title
        @prueba
    end
end
