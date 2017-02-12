class VotesController < ApplicationController
	  before_action :authenticate_user!

	def create
		tweet = Tweet.find(params[:id])
		tweet.liked_by current_user
		redirect_to items_path, notice: "You successfully voted for an item"
		
	end

	def destroy
		tweet = Tweet.find(params[:id])
		tweet.unliked_by current_user
		redirect_to items_path, notice: "You successfully unvoted for an item"


	end
end
