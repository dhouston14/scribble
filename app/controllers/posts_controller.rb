class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all
    # @post = Post.find_by(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)

    redirect_to posts_path
  end


  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to posts_path(@post)
  end


  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

end
