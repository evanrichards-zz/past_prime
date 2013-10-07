module SearchHelper

	def getCredits(id)

		@creditsList = Hash.new unless @creditsList
		if not @creditsList.has_key?('id') or @creditsList['id'] != id
			p 'loading for ' + id.to_s
			@creditsList = {"id" => id, "credits" => Tmdb::People.credits(id)["cast"]}
		end
		@creditsList
	end

	def numMovies(id)
		getCredits(id)['credits'].length
	end
end
