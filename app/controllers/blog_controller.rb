class BlogController < ApplicationController
  before_action :login_check
  skip_before_action :login_check, :only=>[:blog, :blog_category,  :blog_each]

  def blog
    @blogs=Blog.all
  end
 
  def blog_category
    case params[:category]
    when "diary"
      @category="diary"
    when "artsdesign"
      @category="artsdesign"
    when "it"
      @category="it"
    when "entrepreneurship"
      @category="entrepreneurship"
    end
    @blogs=Blog.where(category: @category)
  end

  def blog_each
    @blog=Blog.find(params[:id])
  end

  def blog_write
  end

  def blog_write_complete
    blog=Blog.new
    blog.category=params[:category]
    blog.content=params[:content]
    blog.title=params[:title]
    blog.date=Date.today.to_s
    blog.image=params[:image]
    if blog.save
      redirect_to "/blog/blog_each/#{blog.id}"
    else
      redirect_to :back
    end
  end

  def blog_edit
    @blog=Blog.find(params[:id])
  end

  def blog_edit_complete
    blog=Blog.find(params[:id])
    blog.category=params[:category]
    blog.title=params[:title]
    blog.content=params[:content]
    if blog.save
      redirect_to "/blog/blog_each/#{blog.id}"
    else
      redirect_to :back
    end
  end
end
