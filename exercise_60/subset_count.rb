def subset_count(n, k)
    if n == 0
        return 0 
    elsif k == 0
        return 1
    elsif k == 1
        return n
    else    
        return subset_count(n - 1, k - 1) + subset_count(n - 1, k)
    end
end 



p subset_count(2,2)