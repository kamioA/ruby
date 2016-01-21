# -*- coding: utf-8 -*-
class User
  def initialize(name)
    @name = name
  end
  
  def name
    "#{@name}"
  end
  
  def to_s
    "#{@name}"
  end
end

class Tweet
  def initialize(user, content)
    @user = user
    @content = content
    @create_time = Time.now
  end
  
  def to_s
    "#{@user}: #{@content}\t#{@create_time}"
  end
end

class Tweets
end

def main(name)
  while true
    
    system "clear"
    
    $tweet_repository.each{|tweet| puts tweet} unless $tweet_repository.first.nil?
    
    puts "1:Tweet 2:logout"
    mode = STDIN.gets.to_i
    
    case mode
    when 1 then
      puts "content of tweet"
      content = STDIN.gets
      $tweet_repository.push(Tweet.new(name, content.chomp))
    when 2 then
      break
    when 3 then
      $user_repository.each{|user| puts user}
      sleep(2)
    else
      puts "error"
      sleep(1)
      next
    end
    
  end
end

$tweet_repository = []
$user_repository = []

users_file = File.open("users.txt", "r")

tweets_file = File.open("tweets.txt", "r")

users_file.each do |line|
  $user_repository.push(User.new(line.chomp))
end

tweets_file.each do |line|
  arr = line.split(" ")
  arr[0].chop!
  $tweet_repository.push(Tweet.new(arr[0], arr[1]))
end

users_file.close
tweets_file.close

while true
  system "clear"
  puts "1:login 2:register 3:exit"
  mode = STDIN.gets.to_i
  case mode
  when 1 then
    puts "name?"
    name = STDIN.gets.chomp!
    user = $user_repository.select{ |user| user.name == name}.first
    if user.nil? then
      puts "not exitst"
      sleep(1)
      next
    else
      puts "success"
      sleep(1)
      main(user)
    end
  when 2 then
    puts "name?"
    name = STDIN.gets.chomp!
    user = $user_repository.select{ |user| user.name == name}.first
    if user.nil? then
      puts "success"
      sleep(1)
      $user_repository.push(User.new(name))
      main(name)
    else
      puts "already exist"
      sleep(1)
      next
    end
  when 3 then
    puts "bye"
    sleep(1)
    break
  else
    puts "error"
    sleep(1)
    next
  end
end

users_file = File.open("users.txt", "w")
tweets_file = File.open("tweets.txt", "w")

$user_repository.each do |name|
  users_file.puts(name)
end

$tweet_repository.each do |line|
  tweets_file.puts(line)
end

users_file.close
tweets_file.close
