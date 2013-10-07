class StaticPagesController < ApplicationController
	def home
		@popular= Tmdb::People.popular
	end

  def contact

  end

	def about
		@popular= Tmdb::People.popular
	end

	def popular
		@popular= Tmdb::People.popular
	end
end
