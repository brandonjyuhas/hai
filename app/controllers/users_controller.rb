class UsersController < ApplicationController

	# before_action :authenticate_user!
	
	def index
		@users = User.all.order(:username)
	end

	def show
		@user = User.find(params[:id])
		@posts = Post.where(user_id: @user.id)
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)

		if @user.save
			respond_to do |format|
				format.html { redirect_to @user  }
				format.json { render json: @user, status: 200 }
			end
		end
	end

	def delete
		@user = User.find(params[:id])
		@posts = Post.where(user_id: params[:id])
		@user.destroy
		@posts.delete
	end

	private 

	def user_params
		params.require(:user).permit(:username, :profile_photo, :email, :password, :password_confirmation, :bio, :personal_website)
	end
end