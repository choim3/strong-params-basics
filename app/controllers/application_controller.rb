class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def create
  @post = Post.new(params.require(:post).permit(:title, :description))
  @post.save
  redirect_to post_path(@post)
end

def update
  @post = Post.find(params[:id])
  @post.update(params.require(:post).permit(:title))
  redirect_to post_path(@post)
end 
end
