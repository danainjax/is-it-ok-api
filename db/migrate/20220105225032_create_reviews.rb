class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :movie, null: false, foreign_key: true
      t.integer :rating
      t.string :language
      t.string :sex
      t.string :violence
      t.text :comment

      t.timestamps
    end
  end
end
