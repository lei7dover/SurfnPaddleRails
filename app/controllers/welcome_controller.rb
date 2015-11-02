class WelcomeController < ApplicationController
  def index
    @post = Post.all.sort_by{|p|p.created_at}.first
    @posts = Post.all.reject{|p| p.id == @post.id}
    @page_title = @post.title
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.sorted.reject{|p| p.id == @post.id}
    @page_title = @post.title
  end

end
