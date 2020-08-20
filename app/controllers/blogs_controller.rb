class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end
  def create
    Blog.create(content params[:blog][:content])
    redirect_to new_blog_path
end
