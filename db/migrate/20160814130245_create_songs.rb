class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :image_url
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
