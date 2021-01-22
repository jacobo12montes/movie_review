class CreateFavmovies < ActiveRecord::Migration[6.1]
  def change
    create_table :favmovies do |t|
      t.references :user
      t.references :movie

      t.timestamps
    end
  end
end
