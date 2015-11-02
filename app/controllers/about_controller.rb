class AboutController < ApplicationController
  def show
    @post = Post.all.sort_by{|p|p.created_at}.first
    @posts = Post.all.reject{|p| p.id == @post.id}
      @page_title = "About Page"
  end

end
