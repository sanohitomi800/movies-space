class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order("created_at DESC")
  end
  
  def new
    @movie = Movie.new
  end

end
