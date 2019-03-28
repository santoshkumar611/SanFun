class Episode < ApplicationRecord
  belongs_to :movies_season,touch: true
  validates_presence_of :episode_number
end
