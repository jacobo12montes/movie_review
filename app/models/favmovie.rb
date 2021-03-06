class Favmovie < ApplicationRecord
  validates :user_id, uniqueness: { scope: :movie_id }  
  belongs_to :user
  belongs_to :movie
end