class PostsController < ApplicationController 

  def create

    @post = Post.new(post_params)
    if @post.save 
      redirect_to "/posts/#{@post.id}"
    else 
      render :new 
    end
  end

  def new 
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  private 

  def post_params
    params.require(:post).permit(:title, :description)
  end 
end 