
def iterative_nth_fibonacci_number(n)
    if n == 0
        return 0
    elsif n == 1
        return 1
    else 
        sequence = [0, 1]
        for i in 2..n
            sequence << sequence[i-1] + sequence[i-2]
        end
        return sequence[-1]
    end
end

def recursive_nth_fibonacci_number(n)
    if n == 0
        return 0
    elsif n == 1
        return 1
    else
        return recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
    end
end


p iterative_nth_fibonacci_number(5)
p recursive_nth_fibonacci_number(5)