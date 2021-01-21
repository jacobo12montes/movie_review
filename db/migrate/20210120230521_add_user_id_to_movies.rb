class AddUserIdToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :user_id, :string
    add_column :movies, :integer, :string
  end
end
