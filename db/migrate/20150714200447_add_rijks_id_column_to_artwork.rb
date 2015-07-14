class AddRijksIdColumnToArtwork < ActiveRecord::Migration
  def change
  	add_column :artworks, :rijks_id, :string
  end
end
