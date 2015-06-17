class User
  attr_accessor :email, :twitter, :facebook
end

class EmailNotifier
  
  def initialize(user)
    @user = user
  end
  
  def send_message
    puts "I'm notifity #{@user.email} through email!"
  end
end

class TwitterNotifier
  def initialize(user)
    @user = user
  end
  
  def send_message
    puts "I'm notifity #{@user.twitter} through Twitter!"
  end
end

class FacebookNotifier
  
  def initialize(user)
    @user = user
  end
  
  def send_message
    puts "I'm notifity #{@user.facebook} through Facebook!"
  end
end

class NotifierFactory
  
  def self.from_user(user)
    if user.email
      EmailNotifier.new(user)
    elsif user.twitter
      TwitterNotifier.new(user)
    elsif user.facebook
      FacebookNotifier.new(user)
    end
  end
  
end

james = User.new
james.twitter = "@james"
NotifierFactory.from_user(james).send_message