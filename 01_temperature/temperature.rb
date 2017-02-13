def ftoc f
   c = 0
   c = (f.to_f-32)*5/9
end

def ctof c
    f=0
    f= (c.to_f * 9 / 5) + 32
end