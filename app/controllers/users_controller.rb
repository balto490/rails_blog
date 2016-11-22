class UsersController < ApplicationController
  def profile
  end

  def show
  	@user = User.find(current_user.id)
  	params[:id] = current_user.id
  end

  def edit 
  	@user = User.find(current_user.id)
  	params[:id] = current_user.id
  end

end
