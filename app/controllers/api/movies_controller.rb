class Api::MoviesController < ApplicationController

  # def index
  #   @movies = Movie.all
  #   render 'index.json.jb'
  # end

  # def show
  #   @movie = Movie.find_by(id: params[:id])
  #   render 'show.json.jb'
  # end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      # english: params[:english]
    )
    @movie.save
    render 'show.json.jb'
  end

 

  def update
    @movie = Movie.find_by(id: params[:id])
     @movie.title = params[:title]
     @movie.year = params[:year]
     @movie.plot = params[:plot]
     @movie.director = params[:director]
     
     @movie.save
    render 'show.json.jb'
  end
end