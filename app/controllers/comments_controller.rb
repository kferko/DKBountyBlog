class CommentsController < ApplicationController
  def index
    # Nothing needed. We do not show the comments on an index page.
  end

  def show

  end

  def new
    @comment = Comment.new
    # Sets instance variable @comment to a comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    # Line above passes comment_params defined at the bottom of controller through a comment.new
    # these two lines set the comment's user_id to the current user and the post_id to the current post.
    @comment.user_id = session[:user_id]
    @comment.post_id = params[:comment][:post_id]
    if current_user
      # making sure a user is logged in. If not it redirects back and asks them to log in.
        if @comment.save
          flash[:notice] = "Awesome New Comment"
          redirect_to :back
          # If comment is saved it flashes a notice and redirects back to the page.
        else
          flash[:alert] = "Please enter a comment"
          redirect_to :back
          # If comment fails to save it flashes an error alert and redirects back to the post page.
        end
    else
      redirect_to :back
      flash[:notice] = "Please Log in to make a comment." 
    end

  end


  def edit
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    if current_user
      # making sure program doesn't crash if user trying to click is not signed in.
        if current_user.id == @comment.user_id
          # Checks to make sure it is the correct user. And deletes it if it is. If not it redirects. If they are not signed in it redirects and asks them to log in.
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
    # Strong params below all the title and body to be passed through into the create action above.
    params.require(:comment).permit(:title, :body)
  end
end
