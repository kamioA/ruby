n = STDIN.gets
arr = STDIN.gets.split.map(&:to_i)
Min = 1000000
Max = -1000000
min = arr.inject(Min){|min,dum|  if dum > min then
                           min
                           else
                           dum
                           end}

max = arr.inject(Max){|max,dum| if dum < max then
                          max
                          else
                          dum
                          end}
print min,' ',max,' ',arr.inject(:+),"\n"
