class Blog

  @@all_blog_posts = []
  @@count_blog_post = 0

  def self.all
    @@all_blog_posts
  end

  def self.add(new_post)
    @@all_blog_posts << new_post
    @@count_blog_post +=1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "\nTitle: #{post.title}\n\n"
      puts "Written by: #{post.author}\n\n"
      puts "Date Published: #{post.created_at}\n\n"
      puts "Body:\n#{post.content}"
    end
  end

end

class BlogPost < Blog

  def self.create
    post = new
    puts "Please enter the title of your post:"
    post.title = (gets.chomp).capitalize
    puts "\nPlease enter the author's name:"
    post.author = (gets.chomp).capitalize
    puts "\nPlease enter the content for the blog post:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Would you like to add another blog post? Y/N:"
    create if gets.chomp.upcase == "Y"

  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  def created_at
    @created_at
  end

  def created_at=(created_at)
    @created_at = created_at
  end

  def content
    @content
  end

  def content=(content)
    @content = content

  def save
    BlogPost.add(self)
  end

end

end

BlogPost.create

all_blog_posts = BlogPost.all

puts all_blog_posts.inspect

BlogPost.publish
