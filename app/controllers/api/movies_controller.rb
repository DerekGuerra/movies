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

  def create 
    @movie = Movie.new(title: params[:input_title], runtime: params[:input_runtime])
    @movie.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    #modify the movie 
    @movie.update(title: params[:input_title], runtime: params[:input_runtime])
    render 'show.json.jbuilder'
  end

  def destroy
    #find movie ID
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    #destroy it
    @movie.destroy
    render 'show.json.jbuilder'
  end
end

