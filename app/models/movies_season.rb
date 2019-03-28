class MoviesSeason < ApplicationRecord
    MOVIE_TYPE = "movie"
    SEASON_TYPE = "season"
    has_many :episodes,-> { order(:episode_number => :asc) }
    validates_presence_of :title,:content_type,:plot
end
