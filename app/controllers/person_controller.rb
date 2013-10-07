class PersonController < ApplicationController
	def show
		@actor = Tmdb::People.detail(params[:id])
		@movies = Tmdb::People.credits(params[:id])

	end
end
