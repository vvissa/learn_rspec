def add (x,y)
    x + y
end

def subtract (x,y)
    x - y
end

def sum (array)
  suma = 0.0
  result = 0.0
  if array.length > 0 then
    array.each do |item|
      suma += item
    end
    result = suma 
  end
  return result
end

def  multiply (x,y)
    x * y 
end

def power (x,y)
    x**y
end

def factorial x
    if x == 0
        result = 1
    elsif  x == 1
        result = 1
    else
        array = [1]
        i = 1
            while i < x
            array.push ( i + 1)
            i = i + 1
            end
        m = 1
        array.each {|a| (m = a * m)}
        m
    end
end          
        