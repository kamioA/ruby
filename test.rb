#1
a = (1..10).to_a
puts
#2
puts a.join(" ")
#3
puts a.map{|i| i * 2}.join(" ")
#4
puts a.inject(:+)
puts a.inject(:*)
#5
a.each do |i|
  print i," " if i.even?
end
puts
