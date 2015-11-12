n = STDIN.gets
arr = STDIN.gets.split.map(&:to_i)
Min = 1000000
Max = -1000000
min = arr.inject(Min){|min,dum| min < dum ? min : dum}

max = arr.inject(Max){|max,dum| max > dum ? max : dum}
print min,' ',max,' ',arr.inject(:+),"\n"
