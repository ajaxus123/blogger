class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Tag '#{@tag.name}' has been deleted!"
		redirect_to action: "index"
	end

	def show
		@tag = Tag.find(params[:id])
	end

end
