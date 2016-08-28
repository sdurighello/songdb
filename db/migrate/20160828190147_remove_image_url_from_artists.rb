class RemoveImageUrlFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :image_url, :string
  end
end
