class UsersController < ApplicationController

	# before_action :authenticate_user!
	
	def index
		@users = User.all.order(:name)
	end

	def show
		@user = User.find(params[:id])
		@posts = Posts.where(user_id: params[:id])
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

	private

		def user_params
			params.require(:user).permit(:username, :bio, :password, :password_confirmation, :link, :profile_pic)
		end
end