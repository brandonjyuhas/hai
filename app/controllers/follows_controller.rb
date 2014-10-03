class FollowsController < ApplicationController

	before_action :authenticate_user!

	def followers
		@followers = User.find(params[:id]).followers

		puts @followers.inspect
	end

	def followed
		@followed = Follow.where(follow: params[:user_id])
	end

	def create
		follow_params[:follower_id] = current_user
		@follow = Follow.new(follow_params)
	end

	def destroy
		@follow = Follow.find(params[:id])
	end


	private

		def follow_params
			params.require(:follow).permit(:followed_id)
		end

end