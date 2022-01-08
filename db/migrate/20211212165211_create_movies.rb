class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image
      t.string :tt_id
      t.string :rank
      t.string :imDbRating
      t.string :year
      t.string :crew
      t.string :imdb_rating
  
      t.timestamps
    end
  end
end
