class PostsController < ApplicationController
  

  def index

  	@posts = Post.all

  end

  def show
  	@posts = Post.find(params[:id])
    @comment = Comment.new
    @comment_post = Comment.where(params[:post_id])
    puts params
    # @comments = 
  end

  def new

  	@post = Post.new

  end

  def create
  	@post = Post.new(post_params)
  	# @user = User.find(session[:user_id])
  	@user = current_user
  	if @post.save 
  		@user.posts.push @post
  		redirect_to posts_path
  		flash[:notice] = "Awesome New Post."
  	else
  		flash[:notice] = "Something went wrong when we tried to make your post. Try again."
  		redirect_to root_path
  	end

  end

  def edit
  
  end

  def update
  	
  end

  def destroy
  	@post = Post.find(params[:id])
	  puts "**************"
	  puts "DESTROYING POST"
    if current_user.id == @post.user_id
  	   @post.destroy
  	   redirect_to posts_path
       flash[:notice] = "Post Deleted"
    else
      redirect_to posts_path
      flash[:alert] = "Nice Try Buddy. Not your post."
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :body)
  end


end
