class Post
  attr_accessor :title, :date, :text
  
  def initialize(title, text, date)
    @title = title
    @text = text
    @date = date
  end
  
  def format
    "#{title}\n" +
    "**************\n" +
    "#{text}\n" +
    "--------------\n"
  end
end

class SponsoredPost < Post
  def title
    "*********#{super}*********"
  end
end