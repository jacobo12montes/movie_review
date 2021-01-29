class RemoveUseridFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :user_id, :string
    remove_column :movies, :integer, :string
  end
end
