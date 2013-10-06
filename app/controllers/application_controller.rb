class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_config
  Tmdb::Api.key("fc3e8b223d8185e411a46dba6ba97ea3")

  def set_config
  	@configuration = Tmdb::Configuration.new
  end
end
