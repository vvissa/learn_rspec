def translate x
    array = x.to_s.split
    i = 0
    newarray = []
        while i < array.count
         word = array.at(i)
                if word.start_with?("a","e","i","o","u")
                 word = word.to_s + "ay"
                 newarray.push (word)
                 i = i + 1
                 
                elsif word.slice(0..1).to_s == "qu" 
                    word = word.slice(2..word.length).to_s + word.slice(0..1).to_s + "ay"
                    newarray.push (word)
                    i = i + 1
                elsif word.slice(0..2).to_s == "sch" || word.slice(0..2).to_s == "thr" || word.slice(0..2).to_s == "squ"
                    word = word.slice(3..word.length).to_s + word.slice(0..2).to_s + "ay"
                    newarray.push (word)
                    i = i + 1   
                else 
                    if word.slice(1).to_s == "a" || word.slice(1).to_s == "e" || word.slice(1).to_s == "i" || word.slice(1).to_s == "o" || word.slice(1).to_s == "u"
                        word = word.slice(1..word.length).to_s + word.slice(0).to_s + "ay"
                        newarray.push (word)
                        i = i + 1
                    else 
                        word = word.slice(2..word.length).to_s + word.slice(0..1).to_s + "ay"
                        newarray.push (word)
                        i = i + 1
                    end
                end
            

        end
        newarray.join (" ")
end
