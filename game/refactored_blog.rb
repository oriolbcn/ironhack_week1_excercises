require 'pry'

class Blog
	attr_accessor :all_posts

  POSTS_PER_PAGE = 3

	def initialize
		@all_posts = []
		@position = 0
	end

	def add_post(post)
		@all_posts << post
	end
	
	def sort_by_date
		@all_posts = all_posts.sort_by! {|post, date| post.date}.reverse
	end

	def publish_front_page
		slice.each do |v|
			v.print
			puts "Displaying #{@position + 1} - #{@position + POSTS_PER_PAGE} of #{@all_posts.length} posts"
			puts
		  change_page
		  publish_front_page
		end
	end
	
	def slice
	  @all_posts.slice(@position, @position + POSTS_PER_PAGE)
  end
  
	def change_page
	  puts "Push N Key for next page"
		info = gets.chomp.lowercase
		if info == "n"
			@position += POSTS_PER_PAGE
		end
	end
    
  def publish_all
  	sort_by_date
  	publish_front_page
  end	
end



class Post
	attr_accessor :title, :text, :date

	def initialize(title, text, date)
		@title = title
		@text = text
		@date = date
	end
	
	def print
	  puts title
		puts @date
		puts "****************"
		puts @text
		puts "----------------"
	end
	
end


class SponsoredPost < Post
  def title
    return "******** #{super}*********"
  end
end


my_blog = Blog.new

my_blog.add_post Post.new("Title 1", "1st body", Time.new)
my_blog.add_post Post.new("Title 2", "Body 2", Time.new)
my_blog.add_post Post.new("Title 3", "Body 3", Time.new)
my_blog.add_post SponsoredPost.new("Title4", "Body4", Time.new)
my_blog.add_post Post.new("Title5", "Body5", Time.new)
my_blog.add_post Post.new("Title6", "Body6", Time.new)
my_blog.add_post Post.new("Title7", "Body7", Time.new)
my_blog.add_post Post.new("Title8", "Body8", Time.new)

my_blog.publish_all