class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:user)
  end
  
  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params) 
    if @movie.save
      redirect_to root_path
    else
      render :new  
    end   
  end
 
  private

def movie_params
  params.require(:movie).permit(:title, :info, :image).merge(user_id: current_user.id)
end

end
