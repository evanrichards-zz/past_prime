class StaticPagesController < ApplicationController
  def home
  	@popular= Tmdb::People.popular
  end

  def contact

  end
end
