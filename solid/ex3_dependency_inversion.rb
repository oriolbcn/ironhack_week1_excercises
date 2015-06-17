# In the program you wrote before get the passwords saved on a text file instead of hardcoding them. 
# Take care of the dependencies so the user class does not depend on the filesystem management classes.

require 'pry'

class User
  attr_accessor :username, :password
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def valid_password?(password)
    @password == password
  end
end

class Authenticator
  def initialize(user, password)
    @user = user
    @password = password
  end
  
  def authenticate
    unless @user && @user.valid_password?(@password)
      puts "Wrong username or password. Bye!"
      exit
    end
  end
end

class WordsCounterCommand
  def initialize(text)
    @text = text
  end
    
  def run
    @text.split(" ").size
  end
  
  def self.description
    "Count the words in a text"
  end
  
end

class LettersCounterCommand
  def initialize(text)
    @text = text
  end
  
  def run
    @text.size
  end
  
  def self.description
    "Count the letters in a text"
  end
end

class ReverseLettersCommand
  def initialize(text)
    @text = text
  end
    
  def run
    @text.reverse
  end
  
  def self.description
    "Reverse a text"
  end
end

class UppercaseCommand
  def initialize(text)
    @text = text
  end
    
  def run
    @text.upcase
  end
  
  def self.description
    "Uppercase a text"
  end
end

class LowercaseCommand
  def initialize(text)
    @text = text
  end
    
  def run
    @text.downcase
  end
  
  def self.description
    "Lowercase a text"
  end
end

class UserStorage

  def load_users
    user_lines = IO.readlines('users.txt')
    # users = []
    #user_lines.each do |line|
    #   users << load_user(line)
    #end
    #return users
    users = user_lines.map do |line|
      load_user(line)
    end
    return users
  end
  
  def load_user(line)
    username_and_password = line.split(',')
    username = username_and_password[0].strip
    password = username_and_password[1].strip
    return User.new(username, password)
  end
end

class CoolTool
  
  def initialize
    @commands = {}
    @users = UserStorage.new.load_users
  end
    
  def add_command(command_text, command)
    @commands[command_text] = command
  end
  
  def start
    authenticate
    show_menu_and_run_command
  end
  
  private
  
  def authenticate
    puts "Please enter your username"
    username = gets.chomp
    puts "Please enter your password"
    password = gets.chomp
    user = @users.select { |u| u.username == username }.first
    Authenticator.new(user, password).authenticate
  end
  
  def show_menu_and_run_command
    puts "What you want to do?"
    @commands.each do |command_text, command|
      puts "#{command_text}: #{command.description}"
    end
    user_command = gets.chomp
    if @commands.has_key?(user_command)
      run_command(user_command)
    else
      puts "I don't understand"
    end
  end
  
  def run_command(command_text)
    puts "What text do you want to process?"
    text = gets.chomp
    puts @commands[command_text].new(text).run
  end
end

my_cool_tool = CoolTool.new

my_cool_tool.add_command "count_words", WordsCounterCommand
my_cool_tool.add_command "count_letters", LettersCounterCommand
my_cool_tool.add_command "reverse", ReverseLettersCommand
my_cool_tool.add_command "upper", UppercaseCommand
my_cool_tool.add_command "lower", LowercaseCommand

my_cool_tool.start