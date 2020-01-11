
def iterative_tower_of_hanoi(a, b, c) 
    disks = a.length
    if disks % 2 == 0
        loop do 

            #A and B
            if b.length == 0 
                if a.length != 0 
                    b << a.pop
                end
            elsif a.length == 0
                if b.length != 0 
                    a << b.pop
                end
            
            elsif a[-1] < b[-1]
                b << a.pop
            elsif a[-1] > b[-1]
                a << b.pop
            end
            

            if c.length == disks 
                break
            end           

            #A and C
            if c.length == 0
                if a.length != 0 
                    c << a.pop
                end
            elsif a.length == 0 
                if c.length != 0
                    a << c.pop
                end
            
            elsif a[-1] < c[-1]
                c << a.pop
            elsif a[-1] > c[-1]
                a << c.pop
            end
            
            if c.length == disks 
                break
            end


            #B and C
            if c.length == 0 
                if b.length != 0 
                    c << b.pop
                end
            elsif b.length == 0
                if c.length != 0 
                    b << c.pop
                end
            elsif b[-1] < c[-1]
                c << b.pop
            elsif b[-1] > c[-1]
                b << c.pop
            end

            if c.length == disks 
                break
            end


            
        end 
    else 
        loop do
   
            #A and C
            if c.length == 0
                if a.length != 0 
                    c << a.pop
                end
            elsif a.length == 0 
                if c.length != 0
                    a << c.pop
                end
            
            elsif a[-1] < c[-1]
                c << a.pop
            elsif a[-1] > c[-1]
                a << c.pop
            end
            
            if c.length == disks 
                break
            end


            #A and B
            if b.length == 0 
                if a.length != 0 
                    b << a.pop
                end
            elsif a.length == 0
                if b.length != 0 
                    a << b.pop
                end
            
            elsif a[-1] < b[-1]
                b << a.pop
            elsif a[-1] > b[-1]
                a << b.pop
            end
            

            if c.length == disks 
                break
            end

            #B and C
            if c.length == 0 
                if b.length != 0 
                    c << b.pop
                end
            elsif b.length == 0
                if c.length != 0 
                    b << c.pop
                end
            elsif b[-1] < c[-1]
                c << b.pop
            elsif b[-1] > c[-1]
                b << c.pop
            end

            if c.length == disks 
                break
            end

        end
    end 

end



def recursive_tower_of_hanoi(in_a, a, b, c)
    if in_a == 1
       c << a.pop
       return
    else
        recursive_tower_of_hanoi(in_a-1, a, c, b)
        c << a.pop
        recursive_tower_of_hanoi(in_a-1, b, a, c)
    end
end 










a = [7,6,5,4,3,2,1]
b = []
c = []


#recursive_tower_of_hanoi(a.length, a, b, c)

iterative_tower_of_hanoi(a,b,c)
puts "#{a}"
puts "#{b}"
puts "#{c}"