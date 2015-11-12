loop{
  h, w = STDIN.gets.split.map(&:to_i)
  break if h == 0 && w == 0
  (1..h).each do |i|
    puts('#' * w)
end
puts
}
