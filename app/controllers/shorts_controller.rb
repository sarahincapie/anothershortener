class ShortsController < ApplicationController

	def index
		@shorts = Short.all
	end 

	def show
  	@short = Short.find(params[:id])
	end 

	def create
	 @short = Short.new(short_params)

	 if @short.save
	 	redirect_to @short
	 else 
	 	render "new"
	 end 
  end 


	def new
		@short = Short.new
	end

	
	private

	def short_params
		params.require(:short).permit(:long, :short)
	end 
end
