def fibs(number)

    if number == 1 || number == 2
        return 1
    end

    f_0 = 1
    f_1 = 1
    
    result = 0

    for i in 3..(number) do
        temp = f_0 + f_1
        f_0 = f_1
        f_1 = temp
        result = temp
    end

    return result
end

def fibs_rec(number)

    if number == 1 || number == 0
        1
    else
       fibs_rec(number - 1) + fibs_rec(number - 2)
    end

end

puts fibs_rec(30)