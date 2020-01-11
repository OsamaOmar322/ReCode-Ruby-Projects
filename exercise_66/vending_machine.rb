# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to



#This one takes ages, but gets ALL the results right
#Scroll down for another answer
def return_coins(remaining_coins, target_amount)
  total_have = remaining_coins.inject(0){|sum, x| sum + x }
  if target_amount > total_have or remaining_coins.length == 0 or target_amount <= 0
    
    return []
  else
    #puts "#{remaining_coins} - #{target_amount}"
    with = [remaining_coins[0]] + return_coins(remaining_coins[1..-1], target_amount - remaining_coins[0])
    sum_of_with = with.inject(0){|sum, x| sum + x } 
    without = return_coins(remaining_coins[1..-1], target_amount)
    sum_of_without = without.inject(0){|sum, x| sum + x }
 
    if with.length < without.length 
      if sum_of_with == target_amount
        return with 
      elsif sum_of_without == target_amount  
        return without
      else 
        return []
      end 
    else 
      if sum_of_without == target_amount
        return without 
      elsif sum_of_with == target_amount  
        return with
      else 
        return []
      end
    end
  
  end
end 


#This one is fast, but FAILS for the last test case

# def return_coins(remaining_coins, target_amount)
#   total_have = remaining_coins.inject(0){|sum, x| sum + x }
#   if target_amount > total_have
#     return []
#   else
#     remaining_coins = remaining_coins.sort {|x,y| -(x <=> y)}
#     if target_amount == 0 
#       return []
#     else 
#       i = 0
#       #p target_amount
#       while remaining_coins[i] > target_amount
#         i = i + 1
#       end
#       return [remaining_coins[i]] + return_coins(remaining_coins[i+1..-1], target_amount - remaining_coins[i])
#     end
  
#   end
# end 



# Test Case 1
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 15) == [10, 5]


# Test Case 2
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p return_coins(coins, 1) == [1]

# Test Case 3
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 20) == [10, 5, 2, 2, 1]


# Test Case 4
coins = []

p return_coins(coins, 20) == []

# Test Case 5
coins = []
5.times do
  coins << 10
end

p return_coins(coins, 100) == []

# # Test Case 5
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p return_coins(coins, 3) == [2, 1]

# Test Case 6
coins = []
100.times do
  coins << 1
end

p return_coins(coins, 34) == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

# Test Case 7
coins = []
4.times do
  coins << 10
end
2.times do
  coins << 50
end
1.times do
  coins << 20
end
100.times do
  coins << 1
end

p return_coins(coins, 98) == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]

# Test Case 8
coins = []
8.times do
  coins << 1
end
2.times do
  coins << 20
end
1.times do
  coins << 50
  coins << 15
  coins << 10
end

p return_coins(coins, 98) #== [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1]

# Test Case 9
coins = []
8.times do
  coins << 1
end
3.times do
  coins << 11
end
2.times do
  coins << 20
end
  coins << 50
  coins << 10

p return_coins(coins, 33) == [11, 11, 11]
