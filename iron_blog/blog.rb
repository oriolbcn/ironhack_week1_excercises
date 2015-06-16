class Blog
  
  def initialize
    @posts = []
  end
  
  def write_post(post)
    @posts << post
  end
  
  def order_posts
    # sort and sort_by methods sort ascendingly, from lower to higher.
    # We want to sort the other way around (from higher dates to lower dates).
    @posts = @posts.sort do |post_a, post_b|
      post_b.date <=> post_a.date
    end
  end
  
  def create_front_page
    order_posts
    @front_page = @posts.reduce("") do |front_page, post|
      front_page += post.format
    end
  end
  
  def publish_front_page
    puts @front_page
  end
  
  def publish_page(page, number_of_posts)
    system("clear") # This clear the console (don't know if this works in Windows)
    @posts[(page - 1) * number_of_posts, number_of_posts].each do |post|
      puts post.format
    end
  end
  
  def number_of_posts
    @posts.size
  end
end
