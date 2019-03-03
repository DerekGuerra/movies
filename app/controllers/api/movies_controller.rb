class Api::MoviesController < ApplicationController
  def index 
    @movies = Movie.all 
    render 'index.json.jbuilder'
  end
end
