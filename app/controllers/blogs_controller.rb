class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :update]
  def index
    @blogs = Blog.all
  end
  def new
    @blog = Blog.new
  end
  def create
  @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice: "ツイートしました！"
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
