class SearchController < ApplicationController
	def index
		@search = Tmdb::People.find(params[:query])
	end
end
