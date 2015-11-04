n = STDIN.gets.to_i
arr = STDIN.gets.split.map(&:to_i)
print arr.min,' ',arr.max,' ',arr.inject(:+),"\n"
