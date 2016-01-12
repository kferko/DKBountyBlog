class PostsController < ApplicationController
  

  def index

  	@posts = Post.all
    # Sets @posts to all posts so they can be displayed on the index view.
  end

  def show
  	@posts = Post.find(params[:id])
    # finds specific Post for the current view.
    @comment = Comment.new
    # Sets @ comment as a new comment
    @comment_post = Comment.where(params[:post_id])
    # finds the comments with the same post id as the show page of the current post.
    @user = current_user

    puts params
  end

  def new

  	@post = Post.new

  end

  def create
  	@post = Post.new(post_params)
    # Passes strong params through a new Post.
  	@user = current_user
    if current_user
      # making sure that the user is signed in so it doesn't crash when clicked.
    	if @post.save 
    		@user.posts.push @post
        # pushing the current usesr_id into the post params.
    		redirect_to posts_path
        # redirects to the posts_path and flashes a success notice.
    		flash[:notice] = "Awesome New Post."
    	else
    		flash[:notice] = "Something went wrong when we tried to make your post. Try again."
    		redirect_to root_path
        # If save fails flashes a fail notice and redirects to the root.
    	end
    else
      redirect_to :back
      flash[:notice] = "Please Login to make a post."
      # If no current users alerts them that they need to
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if current_user
        if current_user.id == @post.user_id
          # making sure current_user_id matches the user_id on the post.
           @post.update(post_params)
           redirect_to @post
           flash[:notice] = "Post Updated!"
        else
          redirect_to @post
          flash[:alert] = "Nice Try Buddy. Not your post."
        end
    else
      redirect_to :back
      flash[:alert] = "Please Log in to do something"
    end  
  end

  def destroy
  	@post = Post.find(params[:id])
	  puts "**************"
	  puts "DESTROYING POST"
    if current_user
        if current_user.id == @post.user_id
      	   @post.destroy
      	   redirect_to posts_path
           flash[:notice] = "Post Deleted"
        else
          redirect_to posts_path
          flash[:alert] = "Nice Try Buddy. Not your post."
  
        end      
    else
      redirect_to :back
      flash[:notice] = "Please Log in to do something."    
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :body, :image_file_name, :image_content_type, :image_file_size, :image_updated_at, :image)
  end


end
