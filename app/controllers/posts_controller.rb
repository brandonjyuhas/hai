class PostsController < ApplicationController

	before_action :authenticate_user!

	def index
		@followed_ids = Follow.where(follower_id: current_user.id).select(:followed_id).map(&:followed_id)

		@posts = Post.where(user_id: @followed_ids)
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
	end

	def delete
		@post = Post.find(params[:id])
	end


	private

		def post_params
			params.require(:post).permit(:body, :user_id)
		end
end