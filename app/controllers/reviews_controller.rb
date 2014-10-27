class ReviewsController < ApplicationController
	def new
	end

	def create
		render plain: params[:reviews].inspect
	end
end
