class Movie < ApplicationRecord
    belongs_to :user
    has_many :favmovies
end
