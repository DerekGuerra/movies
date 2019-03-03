class Api::MoviesController < ApplicationController

  def index 
    @movies = Movie.all 
    render 'index.json.jbuilder'
  end

  def show 
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    render 'show.json.jbuilder'
  end
end
