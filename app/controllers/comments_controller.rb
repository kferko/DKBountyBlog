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
    @comment.post_id = params[:comment][:post_id]
    if @comment.save
      # @user.comments.push @comment
      flash[:notice] = "Awesome New Comment"
      redirect_to :back
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
    if current_user
        if current_user.id == @comment.user_id
           @comment.destroy
           redirect_to :back
           flash[:notice] = "Comment Deleted"
        else
          redirect_to :back
          flash[:alert] = "Nice Try Buddy. Not your Comment."
        end
    else
      redirect_to :back
      flash[:notice] = "Please Log in to do something." 
    end   

  end

  private
  def comment_params
    params.require(:comment).permit(:title, :body)
  end
end
