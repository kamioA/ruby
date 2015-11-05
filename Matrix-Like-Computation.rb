# coding: utf-8
while n = STDIN.gets.to_i do
  break if n == 0
  twodarr = []
  n.times{ |i|
    arr = STDIN.gets.split.map(&:to_i)
    twodarr[i] = arr
  }
end

p twodarr

#totyuu
