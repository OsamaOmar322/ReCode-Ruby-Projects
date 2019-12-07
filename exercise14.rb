
puts "Multiplication table size?"
table_size = gets.chomp.to_i

separator = "**********************************************************"[0..table_size*5]
for i in 1..table_size
    puts separator
    line = ""
    for j in 1..table_size
        result = i*j
        line = line + "*" + result.to_s.center(4)
    end
    puts line + "*"
end
puts separator