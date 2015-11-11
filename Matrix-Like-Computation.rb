while n = STDIN.gets.to_i do
  break if n == 0
  twodarr = []
  n.times{ |i|
    arr = STDIN.gets.split.map(&:to_i)
    twodarr[i] = arr
  }
  n.times{ |i|
    twodarr[i][twodarr.size] = twodarr[i].inject(:+)
    (twodarr.size+1).times{ |j|
      print twodarr[i][j].to_s.rjust(5)
    }
    puts
  }
  rowsum = twodarr.transpose.map{|ary| ary.inject(&:+)}
  (twodarr.size+1).times{ |i|
    print rowsum[i].to_s.rjust(5)
  }
  puts
end
