require 'io/console'
require 'colorize'

class BlogNavigator

  # This is a cosntant value. Constants are defined in the body of the class (outside methods), and it's value is, well, constant, it can't be changed.
  POSTS_PER_PAGE = 3
  
  def initialize(blog)
    @blog = blog
    @page = 1
  end
    
  def read_char
    STDIN.echo = false
    STDIN.raw!

    input = STDIN.getc.chr
    if input == "\e" then
        input << STDIN.read_nonblock(3) rescue nil
        input << STDIN.read_nonblock(2) rescue nil
    end
  ensure
    STDIN.echo = true
    STDIN.cooked!

    return input
  end
    
  def publish
    @blog.order_posts
    publish_blog_page
    while key = read_char
      if key == "\e[C" && !last_page?
        @page += 1
        publish_blog_page
      elsif key == "\e[D" && !first_page?
        @page -= 1
        publish_blog_page
      elsif key == 'q'
        exit
      end
    end
  end
  
  def publish_blog_page
    @blog.publish_page(@page, POSTS_PER_PAGE)
    print_pagination
  end
  
  def print_pagination
    (1..total_pages).each do |page_number|
      print_page_number(page_number)
    end
  end
  
  def print_page_number(page_number)
    if @page == page_number
      print "#{page_number} ".colorize(:red)
    else
      print "#{page_number} "
    end
  end
  
  def last_page?
    @page == total_pages
  end
  
  def first_page?
    @page == 1
  end
  
  def total_pages
    (@blog.number_of_posts.to_f / POSTS_PER_PAGE).ceil
  end
  
end