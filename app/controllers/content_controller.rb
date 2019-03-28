class ContentController < ApplicationController
  
  def movies
    # movies = Rails.cache.fetch('movies_seasons') do
      movies = MoviesSeason.where(content_type: MoviesSeason::MOVIE_TYPE).order(created_at: :asc).select(:id,:title,:plot,:created_at)
    # end
    render json: {success: true, movies: movies}
  end

  def seasons
    # @content = Rails.cache.fetch('movies_seasons') do
      @content = MoviesSeason.includes(:episodes).where(content_type: MoviesSeason::SEASON_TYPE).order(created_at: :asc) 
    # end
  end

  def movies_seasons
    # @content = Rails.cache.fetch('movies_seasons') do
      @content = MoviesSeason.includes(:episodes).order(created_at: :asc)
    # end
    render action: :seasons
  end
end
