class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :full_title
      t.string :genres
      t.string :image
      t.string :plot
      t.string :runtime
      t.string :stars
      t.string :year
      t.string :releaseDate
      t.string :contentRating
      t.string :trailer
      t.string :poster

      t.timestamps
    end
  end
end
