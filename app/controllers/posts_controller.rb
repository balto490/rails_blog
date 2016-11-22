class PostsController < ApplicationController
  def index
    if user_signed_in?
  	   @user = User.find(current_user.id)
       params[:id] = current_user.id
    else
       @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
    puts "test"
    @user = User.find_by_id(current_user.id)
  	@post = Post.new(post_params)
    @post.user = @user
  	@post.save 
  	redirect_to '/'
  	# else
  	# 	redirect_to 'posts/new'
  	# end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_path
  end 

  private
  def post_params
  	params.require(:post).permit(:title, :blog_post)
  end

end
