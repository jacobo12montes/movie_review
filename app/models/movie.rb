class Movie < ApplicationRecord
    self.inheritance_column = "not_sti"
    belongs_to :user
    has_many :favmovies
    # scope :filter_by_director, -> (director) { where director: director }
    # scope :filter_by_location, -> (rating) { where rating: rating }
    # scope :filter_by_starts_with, -> (title) { where("title like ?", "#{title}%")}
    def self.search(search)
      if search
        where(["title LIKE ?","%#{search}%"])
      else
        all
      end  
    end   
end
