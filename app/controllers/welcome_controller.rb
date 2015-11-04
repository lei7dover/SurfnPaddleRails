class WelcomeController < ApplicationController
  def index
    @post = Post.all.sort_by{|p|p.created_at}.first
    @posts = Post.all.reject{|p| p.id == @post.id}
    @page_title = @post.title
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.where("id != ?",params[:id]).order("created_at DESC").limit(4)
    @page_title = @post.title
    render :template=> "welcome/index.html.erb"
  end

end
