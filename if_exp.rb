x = STDIN.gets.to_i
y = if x % 2 == 0  then
      x * 2
else
      x * 3
end
puts y
