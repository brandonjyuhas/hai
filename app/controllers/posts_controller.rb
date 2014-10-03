class PostsController < ApplicationController

	before_action :authenticate_user!

	def index
		@followed_ids = Follow.where(follower_id: current_user.id).select(:followed_id).map(&:followed_id)

		@posts = Post.where(user_id: @followed_ids)
		# @posts << Post.where(user_id:current_user.id)
		@posts.order(:created_at)
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)

		    if @post.save
		    	puts "\n\n\n\n\n\n #{@post} \n\n\n\n"
      render json: @post
    else
      render status: 400, nothing: true
    end
	end

	def delete
		@post = Post.find(params[:id])
	end


	private

		def post_params
			params.require(:post).permit(:body, :user_id)
		end
end