class CreateTrailers < ActiveRecord::Migration[6.1]
  def change
    create_table :trailers do |t|
      t.string :tt_id
      t.string :title
      t.string :video_title
      t.string :video_description
      t.string :link_embed

      t.timestamps
    end
  end
end
