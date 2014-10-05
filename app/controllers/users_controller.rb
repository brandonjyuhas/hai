class UsersController < ApplicationController

	# before_action :authenticate_user!
	
	def index
		@users = User.all.order(:username)
	end

	def show
		@user = User.find(params[:id])
		@posts = Post.where(user_id: params[:id])
		@follow_request = User.follow(current_user, @user)
		if @follow_request 
			redirect_to @user
		end 
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
	end

	def delete
		@user = User.find(params[:id])
		@posts = Post.where(user_id: params[:id])
		@user.destroy
		@posts.delete
	end
end