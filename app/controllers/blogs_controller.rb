class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end
  def create
    Blog.create(blog_params)
    redirect_to new_blog_path
    gitnindex
    @blogs = Blog.all
  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
