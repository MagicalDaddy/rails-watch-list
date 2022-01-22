class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

=begin
    def create
      @movie = Movie.new(movies_params)

      if @movie.save
        redirect_to movies_path
      else
        render :new
      end
    end
=end

  def show
    set_movie
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movies_params
    params.require(:movie).permit(:title, :overview, :rating)
  end
end
