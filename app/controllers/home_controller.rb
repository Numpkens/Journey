class HomeController < ApplicationController
  def index
    @posts = Post.includes(:user).with_attached_thumbnail

    # Apply search if query present
    if params[:query].present?
      @posts = @posts.where("title ILIKE ? OR content ILIKE ?",
                           "%#{params[:query]}%",
                           "%#{params[:query]}%")
    end

    # Apply user filter if email is provided
    if params[:user_filter].present?
      @posts = @posts.joins(:user).where("users.email ILIKE ?", "%#{params[:user_filter]}%")
    end

    # Order by views first, then by date
    @posts = @posts.order(view_count: :desc, created_at: :desc)
  end
end
