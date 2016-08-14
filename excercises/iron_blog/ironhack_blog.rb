require 'date'

require './blog'
require './post'
require './blog_navigator'

ironhack_blog = Blog.new
ironhack_blog.write_post Post.new("Post title 1", "Post 1 text", Date.new(2015, 6, 15))
ironhack_blog.write_post SponsoredPost.new("Post title 2", "Post 2 text", Date.new(2015, 3, 12))
ironhack_blog.write_post Post.new("Post title 3", "Post 3 text", Date.new(2015, 4, 9))

ironhack_blog.write_post Post.new("Post title 4", "Post 4 text", Date.new(2015, 6, 15))
ironhack_blog.write_post Post.new("Post title 5", "Post 5 text", Date.new(2015, 3, 12))
ironhack_blog.write_post Post.new("Post title 6", "Post 6 text", Date.new(2015, 4, 9))

ironhack_blog.write_post Post.new("Post title 8", "Post 8 text", Date.new(2015, 6, 15))
ironhack_blog.write_post SponsoredPost.new("Post title 7", "Post 7 text", Date.new(2015, 3, 12))

BlogNavigator.new(ironhack_blog).publish