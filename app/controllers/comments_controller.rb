class CommentsController < ApplicationController
  def index
    @comment = Comments.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    if @comment.save
      # @user.comments.push @comment
      flash[:notice] = "Awesome New Comment"
    else
      flash[:alert] = "Please enter a comment"
      redirect_to :back
    end
  end


  def edit
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :body)
end
