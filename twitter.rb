# -*- coding: utf-8 -*-
class User
  def initialize(name)
    @name = name
  end
  
  def name
    "#{@name}"
  end
  
  def to_s
    "User: #{@name}"
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

#class Users
#  def initialize(
#   @users = []
#end

# def user(userName)
#  #ユーザーの有無を確認してプッシュする
# @users.push(userName.name)
# end
#end

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
    exit!
  else
    puts "error"
    sleep(1)
    next
  end
end



