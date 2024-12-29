class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]  # Changed from find_params to set_post
  before_action :ensure_owner, only: [:edit, :update, :destroy]

  def show
    @post = Post.find(params[:id])
    @post.increment_view_count!
    # ... rest of your show action
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)  # Changed from post_inputs to post_params
    if @post.save
      flash[:notice] = "Post created successfully"
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)  # Changed from post_inputs to post_params
      flash[:notice] = "Post updated successfully"
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Post deleted successfully"
    redirect_to posts_path
  end

  private

  def set_post  # Changed method name from find_params to set_post
    @post = Post.find(params[:id])
  end

  def post_params  # Changed method name from post_inputs to post_params
    params.require(:post).permit(:title, :content, :thumbnail)
  end

  def ensure_owner
    unless @post.user == current_user
      flash[:alert] = "You are not authorized to perform this action"
      redirect_to posts_path
    end
  end
end
