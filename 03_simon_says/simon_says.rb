def echo x
    x.to_s
end

def shout x
    x.to_s.upcase
end

def repeat (x,y=2)
    i = 1
    re = x.to_s
    while i < y do
    re = re+" "+x.to_s
    i = i + 1
    end
    re
end
    
def start_of_word (x,y)
    if y == 1 
        x.to_s.slice(0)
    else
        x.to_s.slice(0..y-1)
    end
end

def first_word x
    array = x.to_s.split
    array.at (0)
end

def titleize x
    array = x.to_s.split
    newarray = array.collect {|y| y.to_s.capitalize}
    i = 1
    while i < newarray.count
        if newarray.at(i).to_s.downcase == "the" || newarray.at(i).to_s.downcase == "and" || newarray.at(i).to_s.downcase == "over" 
        newarray.at(i).downcase!
        i = i + 1
    else
        i = i + 1 
        end
    
    end
    newarray.join(" ")
end