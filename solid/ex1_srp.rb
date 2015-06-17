# Create a command line tool. This command line tool will ask you for a user and a password. 
# If correct it will ask to enter a text and the program will count the number of words.

# The password and user can be hardcoded into the source code.

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

class WordsCounter
  def initialize(text)
    @text = text
  end
  
  def number_of_words
    @text.split(" ").size
  end
end

class CoolTool
  
  def initialize
    @users = []
  end
  
  def register_user(username, password)
    @users << User.new(username, password)
  end
  
  def start
    authenticate
    count_words
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
  
  def count_words
    puts "Give me a text and I'll count the number of words!"
    text = gets
    puts WordsCounter.new(text).number_of_words
  end
  
end

my_cool_tool = CoolTool.new
my_cool_tool.register_user('rambo', 'rAmb0')
my_cool_tool.register_user('rocky', 'rocky123')
my_cool_tool.register_user('jules', 'seluj')
my_cool_tool.start