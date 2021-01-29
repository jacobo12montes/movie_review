require 'rails_helper'

RSpec.describe Movie, type: :model do
  movie = Movie.new(title: "Anything", description: "Lorem ipsum", movie_lenght: 1, director:"guy1", rating: 1)
  it "it should not be created whitout an user id" do
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end

end
