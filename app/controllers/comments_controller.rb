class CommentsController < ApplicationController
  def index
  	@comments = Comment.where(user_id:params[:id])
  end

  def new
  	@post = Post.find(params[:id])
  	@user = current_user
  	@comment = @post.comments.build 
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    if @comment.save
  		redirect_to '/posts/:id'
  	end
  end

end
