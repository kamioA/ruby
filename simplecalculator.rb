loop{
  a,b,c = STDIN.gets.split
  a = a.to_i
  c = c.to_i
  puts cul = case b
        when "+" then
          a + c
        when "-" then
          a - c
        when "*" then
          a * c
        when "/" then
          a / c
        else
          break
        end
}
