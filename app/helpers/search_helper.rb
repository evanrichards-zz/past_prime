module SearchHelper

	def getCredits(id)
		Tmdb::People.credits(id)
	end

	def numMovies(id)
		getCredits(id)["cast"].length()
	end
end
