class WelcomeController < ApplicationController
  before_action :set_posts
  def index
    @post = Post.all.sort_by{|p|p.created_at}.first
    @page_title = @post.title
  end

  def show
    @post = Post.find(params[:id])
    @page_title = @post.title
    render :template=> "welcome/index.html.erb"
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to welcome_index_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :new
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to welcome_path @post
      else
        render :new
      end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to welcome_index_path
  end

  private
  def set_posts
    if params[:id]
      @posts = Post.where("id != ?",params[:id]).order("created_at DESC").limit(4)
    else
      @posts = Post.order("created_at DESC").limit(4)
    end

  end

  def post_params
    params.require(:post).permit(:title, :body, :image, :author_id)
  end

end
